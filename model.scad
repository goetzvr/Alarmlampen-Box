
include <config.scad>;
use <bottom.scad>;
use <top.scad>;
use <side-x.scad>;
use <side-y.scad>;

module model()
{
    translate([0, 0, bottom_inset_z])
    box_bottom();

    translate([0, 0, box_z - top_inset_z - material_z])
    box_top();

    #color("green")
    translate([0, -nothing, 0])
    side_x();

    color("green")
    translate([0, box_y - material_z + nothing, 0])
    side_x();

    #color("blue")
    translate([side_y_inset - nothing, 0, 0])
    side_y();

    color("blue")
    translate([box_x - side_y_inset - material_z + nothing, 0, 0])
    side_y();
}

model();
