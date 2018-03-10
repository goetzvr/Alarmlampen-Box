
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

    side_x();

    translate([0, box_y - material_z, 0])
    side_x();

    side_y();

    translate([box_x - material_z, 0, 0])
    side_y();
}

model();
