
include <config.scad>;
use <bottom.scad>;

module box_top()
{
    difference()
    {
        union()
        {
            // Begin with the bottom plate
            box_bottom();

            // Mark where the lamp will be mounted
            color("darkgrey")
            translate([
                lamp_offset_x + lamp_diameter/2,
                lamp_offset_y + lamp_diameter/2,
                -nothing
                ])
            cylinder(r = lamp_diameter/2, material_z + 2*nothing);
        }

        // Cut away the holes for the lamp connection
        for (i = [0:6])
        {
            hole = lamp_holes[i];
            hole_x = hole[0];
            hole_y = hole[1];
            hole_diameter = hole[2];
            translate([
                lamp_offset_x + hole_x,
                lamp_offset_y + hole_y,
                -2*nothing
                ])
            cylinder(r = hole_diameter/2, h = material_z + 4*nothing);
        }
    }
}

box_top();
