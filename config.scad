
// All measures in millimeters

$fn = 200;
material_z = 3;
nothing = 0.01;

box_x = 200;
box_y = 200;
box_z = 50;

/*
 * Pintsch Bamag KNRW-220-G measures
 */
lamp_diameter = 165;
// [hole_x, hole_y hole_diameter]
lamp_holes = [
    // The big one
    [112.352, 93.705, 19]
    ];

lamp_offset_x = (box_x - lamp_diameter)/2;
lamp_offset_y = (box_y - lamp_diameter)/2;
