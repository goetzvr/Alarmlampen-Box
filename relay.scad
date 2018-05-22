/*
 * Joy-IT Relay
 */

include <config.scad>;

module relay_hole()
{
    diameter = 5;
    radius = diameter/2;
    cylinder(h=3*material_z, r=radius, center=true);
}

module power_cable_hole()
{
    diameter = 8;
    radius = diameter/2;
    cylinder(h=3*material_z, r=radius, center=true);
}

module relay()
{
    distance_x = 29;
    distance_y = 22;

    distance_power_cable = 75;

    relay_hole();

    translate([distance_x, 0, 0])
    relay_hole();

    translate([distance_x, distance_y, 0])
    relay_hole();

    translate([0, distance_y, 0])
    relay_hole();
    
    translate([distance_x + distance_power_cable, -10, 0])
    power_cable_hole();
}

relay();
