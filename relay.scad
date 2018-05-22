/*
 * Joy-IT Relay
 */

include <config.scad>;

module relay_hole()
{
    hole_radius = 5;
    cylinder(h=3*material_z, r=hole_radius, center=true);
}

module relay()
{
    distance_x = 29;
    distance_y = 22;

    relay_hole();

    translate([distance_x, 0, 0])
    relay_hole();

    translate([distance_x, distance_y, 0])
    relay_hole();

    translate([0, distance_y, 0])
    relay_hole();
}

relay();
