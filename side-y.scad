
include <config.scad>;

module side_y()
{
    difference()
    {
        // Plate
        translate([0, material_z, 0])
        cube([
            material_z,
            box_y - 2*material_z,
            box_z
            ]);

        // Bottom edge nose cutout
        translate([
            -nothing,
            nose_offset_y,
            bottom_inset_z
            ])
        cube([
            material_z + 2*nothing,
            nose_width,
            material_z
            ]);

        // Top edge nose cutout
        translate([
            -nothing,
            nose_offset_y,
            box_z - top_inset_z - material_z
            ])
        cube([
            material_z + 2*nothing,
            nose_width,
            material_z
            ]);
    }
}

side_y();

