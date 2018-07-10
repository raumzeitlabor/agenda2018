$fn = 48;
boxHeight = 8;
pcbHole_x = 33.02;
pcbHole_y = 17.78;
batteryHoleDist = 30;
cornerRadius = 5;
outerDim = 50-cornerRadius*2;

module OuterShell()
{
	difference()
	{
		hull()
		{
			translate([+outerDim/2, +outerDim/2, 0]) cylinder(r=cornerRadius, h=boxHeight, center=true);	
			translate([+outerDim/2, -outerDim/2, 0]) cylinder(r=cornerRadius, h=boxHeight, center=true);	
			translate([-outerDim/2, +outerDim/2, 0]) cylinder(r=cornerRadius, h=boxHeight, center=true);	
			translate([-outerDim/2, -outerDim/2, 0]) cylinder(r=cornerRadius, h=boxHeight, center=true);	
		}

		hull()
		{
			translate([+outerDim/2, +outerDim/2, 0]) cylinder(r=cornerRadius-2, h=boxHeight+1, center=true);	
			translate([+outerDim/2, -outerDim/2, 0]) cylinder(r=cornerRadius-2, h=boxHeight+1, center=true);	
			translate([-outerDim/2, +outerDim/2, 0]) cylinder(r=cornerRadius-2, h=boxHeight+1, center=true);	
			translate([-outerDim/2, -outerDim/2, 0]) cylinder(r=cornerRadius-2, h=boxHeight+1, center=true);	
		}
	}
}

module ScrewPosts_PCB()
{
	difference()
	{
		union()
		{
			//posts
			translate([+pcbHole_x/2, +pcbHole_y/2, 0]) cylinder(r=6/2, h=boxHeight, center=true);	
			translate([+pcbHole_x/2, -pcbHole_y/2, 0]) cylinder(r=6/2, h=boxHeight, center=true);	
			translate([-pcbHole_x/2, +pcbHole_y/2, 0]) cylinder(r=6/2, h=boxHeight, center=true);	
			translate([-pcbHole_x/2, -pcbHole_y/2, 0]) cylinder(r=6/2, h=boxHeight, center=true);	

			//connectors
			translate([-(outerDim+cornerRadius*2)/2 +(outerDim+cornerRadius*2-pcbHole_x)/4, +pcbHole_y/2, 0]) cube([(outerDim+cornerRadius*2-pcbHole_x)/2, 3, boxHeight], center=true);
			translate([-(outerDim+cornerRadius*2)/2 +(outerDim+cornerRadius*2-pcbHole_x)/4, -pcbHole_y/2, 0]) cube([(outerDim+cornerRadius*2-pcbHole_x)/2, 3, boxHeight], center=true);
			translate([+(outerDim+cornerRadius*2)/2 -(outerDim+cornerRadius*2-pcbHole_x)/4, +pcbHole_y/2, 0]) cube([(outerDim+cornerRadius*2-pcbHole_x)/2, 3, boxHeight], center=true);
			translate([+(outerDim+cornerRadius*2)/2 -(outerDim+cornerRadius*2-pcbHole_x)/4, -pcbHole_y/2, 0]) cube([(outerDim+cornerRadius*2-pcbHole_x)/2, 3, boxHeight], center=true);
		}
		// holes
		translate([+pcbHole_x/2, +pcbHole_y/2, 0]) cylinder(r=2.4/2, h=boxHeight+1, center=true);	
		translate([+pcbHole_x/2, -pcbHole_y/2, 0]) cylinder(r=2.4/2, h=boxHeight+1, center=true);	
		translate([-pcbHole_x/2, +pcbHole_y/2, 0]) cylinder(r=2.4/2, h=boxHeight+1, center=true);	
		translate([-pcbHole_x/2, -pcbHole_y/2, 0]) cylinder(r=2.4/2, h=boxHeight+1, center=true);	
	}
}

module ScrewPosts_Battery()
{
	difference()
	{
		union()
		{
			//posts
			translate([0, +batteryHoleDist/2, -1]) cylinder(r=6/2, h=boxHeight-2, center=true);	
			translate([0, -batteryHoleDist/2, -1]) cylinder(r=6/2, h=boxHeight-2, center=true);
			// connectors
			translate([0, +(outerDim+cornerRadius*2)/2 -(outerDim+cornerRadius*2-batteryHoleDist)/4 , -1]) cube([3, (outerDim+cornerRadius*2-batteryHoleDist)/2, boxHeight-2], center=true);
			translate([0, -(outerDim+cornerRadius*2)/2 +(outerDim+cornerRadius*2-batteryHoleDist)/4 , -1]) cube([3, (outerDim+cornerRadius*2-batteryHoleDist)/2, boxHeight-2], center=true);
		}
		// holes
		translate([0, +batteryHoleDist/2, 0]) cylinder(r=2.4/2, h=boxHeight+1, center=true);	
		translate([0, -batteryHoleDist/2, 0]) cylinder(r=2.4/2, h=boxHeight+1, center=true);
	}
}

OuterShell();
ScrewPosts_PCB();
ScrewPosts_Battery();
