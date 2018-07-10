#include <avr/sleep.h>
#include <avr/interrupt.h>
#include <avr/wdt.h>
#include <util/delay.h>

const int ledPin[4] = {PB0, PB1, PB3, PB4};
const int buttonPin = PB2;

unsigned int diceValue = 0;
byte animationStep = 0;

void goSleep() 
{
  cli();
  GIMSK |= (1<<INT0); // enable int0
  
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);    // go to deep sleep
  
  MCUCR &= ~(1 << ISC00); //set low level Interrupt
  MCUCR &= ~(1 << ISC01);
  ACSR |= _BV(ACD); //disable the analog comparator
  ADCSRA &= ~_BV(ADEN); //disable ADC

  sei();
  sleep_mode();
  cli();
}

ISR(INT0_vect) { /* nothing to do */ }

void setup() 
{
  for(byte i=0; i<4; i++) pinMode(ledPin[i], OUTPUT); // set LED pins to output
  pinMode(buttonPin, INPUT_PULLUP); // use internal pullup for the push button
  for(byte i=0; i<4; i++) { digitalWrite(ledPin[i], HIGH); delay(200); digitalWrite(ledPin[i], LOW); delay(200); } // blink LEDs once
}

void clearLEDs()
{
  for(byte i=0; i<4; i++) { digitalWrite(ledPin[i], LOW); }
}

void rollDice()
{
  diceValue = diceValue +1; // increment result counter. Overflow does not affect the result
  if(diceValue%3000==0) displayAnimation();
}

void displayAnimation()
{
  digitalWrite(ledPin[animationStep], LOW);
  animationStep = (animationStep+1)%3;
  digitalWrite(ledPin[animationStep], HIGH);
}

void displayDice()
{
  clearLEDs();
  diceValue = diceValue % 6; // limit counter to a 0-5 range
  switch(diceValue)
  {
    case 0: digitalWrite(ledPin[0], HIGH); digitalWrite(ledPin[1], HIGH); digitalWrite(ledPin[2], HIGH); break;
    case 1: digitalWrite(ledPin[3], HIGH); break;
    case 2: digitalWrite(ledPin[2], HIGH); break;
    case 3: digitalWrite(ledPin[0], HIGH); digitalWrite(ledPin[3], HIGH); break;
    case 4: digitalWrite(ledPin[0], HIGH); digitalWrite(ledPin[2], HIGH); break;
    case 5: digitalWrite(ledPin[0], HIGH); digitalWrite(ledPin[2], HIGH); digitalWrite(ledPin[3], HIGH); break;
  }
}

void loop() 
{
  clearLEDs();
  goSleep();

  if(digitalRead(buttonPin)==LOW)
  {
    while(digitalRead(buttonPin)==LOW)
    {
      rollDice();  
    }
    displayDice();    
    _delay_ms(100); // debounce push button
    
    unsigned int delayCounter = 800; // Delay for 800*10ms
    while(delayCounter > 0 && digitalRead(buttonPin)) 
    {
      _delay_ms(10);
      delayCounter--;
    }
    
  }
}
