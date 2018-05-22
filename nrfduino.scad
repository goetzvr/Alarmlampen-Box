/*
 * nRFduino
 */

include <config.scad>;

module nrfduino_hole()
{
    diameter = 4;
    radius = diameter/2;
    cylinder(h=3*material_z, r=radius, center=true);
}

module nrfduino()
{
    x1 = 20;
    y1 = 8;

    // LED 1
    translate([x1, y1, 0])
    nrfduino_hole();

    d1 = 9;
    x2 = x1 + d1;

    // LED 2
    translate([x2, y1, 0])
    nrfduino_hole();

    d2 = 19;
    x3 = x2 + d2;
    d3 = 20;
    y3 = y1 + d3;

    // Mounting hole 1
    translate([x3, y3, 0])
    nrfduino_hole();

    d4 = 40;
    x4 = x3 + d4;

    // Mounting hole 2
    translate([x4, y3, 0])
    nrfduino_hole();
}

nrfduino();
