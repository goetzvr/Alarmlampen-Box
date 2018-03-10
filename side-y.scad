
include <config.scad>;

module side_y()
{
    cube([
        material_z,
        box_y,
        box_z
        ]);
}

side_y();

