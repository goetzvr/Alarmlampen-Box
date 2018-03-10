
include <config.scad>;

module box_bottom()
{
    cube([
        box_x,
        box_y,
        material_z
        ]);
}

box_bottom();
