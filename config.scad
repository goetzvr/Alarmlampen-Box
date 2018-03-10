
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
    [112.352, 93.705, 19],
    // The inner screw holes in counterclockwise order
    [82.735, 141.303, 6],
    [25.113, 51.206, 6],
    [131.988, 46.073, 6],
    // The outer screw holes in counterclockwise order
    [66.192, 142.490, 6],
    [32.613, 36.141, 6],
    [141.364, 59.746, 6]
    ];

lamp_offset_x = (box_x - lamp_diameter)/2;
lamp_offset_y = (box_y - lamp_diameter)/2;
