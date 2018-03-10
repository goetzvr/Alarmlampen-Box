
include <config.scad>;

module side_x()
{
    cube([
        box_x,
        material_z,
        box_z
        ]);
}

side_x();
