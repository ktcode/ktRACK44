//
// ktRACK44
//
 
gap1 = 0.001;
gap2 = 0.002;
th = 1.5;

W = 300;
D = 15.3;
S = 8;

base();



module base()
{
difference()
{
    union()
    {
        translate([0, -th, -15+th*2]) cube([W, D+th*2, 15]);
        translate([0, -S-20, -S+th*2]) cube([W, S, S]);
        
        translate([0, -S-20, -S+th*2]) cube([S, S+20, S]);
        translate([W-S, -S-20, -S+th*2]) cube([S, S+20, S]);
    }
    #translate([0, 0, -300]) cube([W, D, 300]);
    
    translate([0, D, 0]) rotate([0, 0, -45])cube([10, 50, 40], center=true);
    translate([W, D, 0]) rotate([0, 0, 45])cube([10, 50, 40], center=true);
    translate([0, -S-20, 0]) rotate([0, 0, 45])cube([10, 50, 40], center=true);
    translate([W, -S-20, 0]) rotate([0, 0, -45])cube([10, 50, 40], center=true);
    
    //#translate([30, -250, -250]) cube([500, 500, 500]);
}
}

