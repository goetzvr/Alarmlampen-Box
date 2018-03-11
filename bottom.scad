
include <config.scad>;

module box_bottom()
{
    // Central plate
    translate([
        material_z,
        material_z,
        0
        ])
    cube([
        box_x - 2*material_z,
        box_y - 2*material_z,
        material_z
        ]);

    // Add front and back edge noses
    for (y = [
                0,
                box_y - material_z - nothing
            ])
    {
        translate([
            nose_offset_x,
            y,
            0
            ])
        cube([
            nose_width,
            material_z + nothing,
            material_z
            ]);
    }

    // Add left and right edge noses
    for (x = [
            0,
            box_x - material_z - nothing
            ])
    {
        translate([
            x,
            nose_offset_y,
            0
            ])
        cube([
            material_z + nothing,
            nose_width,
            material_z
            ]);
    }
}

box_bottom();
