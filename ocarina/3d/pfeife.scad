$fn = 48;
wall = 2;
shrink = 0.4;

// a slightly bent shape for the air canal
module wave()
{
	for(n = [0 : 0.02 : 1])
	{
		translate([(sin(n*180-90)+1)*5.2, n*26, 0]) cylinder(r=1, h=6+shrink-wall, center=true);
	}
}

module housing()
{
	difference()
	{
		union()
		{
			hull()
			{
				cylinder(r=(27/2)+wall, h=6+shrink+wall+2, center=true);
				translate([0, -20, -1]) cylinder(r=6, h=6+shrink+wall, center=true); 
			}
			translate([-(30/2), -3.5, 0]) cylinder(r=(7/2), h=6+shrink+wall+2, center=true); // screwholder
			translate([+(30/2), -3.5, 0]) cylinder(r=(7/2), h=6+shrink+wall+2, center=true);
			translate([0, +7, 0]) cube([34+wall,8,6+shrink+wall+2], center=true); // led and sensor holder
		}
		cylinder(r=(3/2), h=30, center=true); // air outlet
		translate([0, 0, (6+shrink)/2+wall/2]) cylinder(r=(27+shrink)/2, h=2.001, center=true); // recess for the lid
		translate([0, 0, wall]) cylinder(r=(27/2-wall), h=6+shrink+wall+2, center=true); // inner bore
		translate([0,-26,0]) color([1,0,0]) wave(); // air canal

		translate([-(30/2), -3.5, -wall]) cylinder(r=(3/2), h=6+shrink+wall+2, center=true); // screw hole
		translate([+(30/2), -3.5, -wall]) cylinder(r=(3/2), h=6+shrink+wall+2, center=true); // screw hole

		translate([-30/2, +7, 0]) rotate([0,90,0]) cylinder(r=(3+shrink)/2, h=20, center=true); // led hole
		translate([+30/2, +7, 0]) rotate([0,90,0]) cylinder(r=(5+shrink)/2, h=20, center=true); // sensor hole
		translate([+34/2+1, +7, 0]) rotate([0,90,0]) cylinder(r=(6+shrink)/2, h=2, center=true); // recess for sensor
	}
}

module lid(knob=false)
{
	union()
	{
		cylinder(r=(27/2), h=wall, center=true);
		if(knob)
		{
			translate([0,0,wall+1]) cylinder(r=(9/2), h=1, center=true);
			translate([0,0,wall]) cylinder(r=(8/2), h=2, center=true);
		}
	}
}

housing();
*lid();
