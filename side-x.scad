
include <config.scad>;

module side_x()
{
    difference()
    {
        // Plate
        cube([
            box_x,
            material_z,
            box_z
            ]);

        // Bottom edge nose cutout
        translate([
            nose_offset_x,
            -nothing,
            bottom_inset_z
            ])
        cube([
            nose_width,
            material_z + 2*nothing,
            material_z
            ]);

        // Top edge nose cutout
        translate([
            nose_offset_x,
            -nothing,
            box_z - material_z - top_inset_z
            ])
        cube([
            nose_width,
            material_z + 2*nothing,
            material_z
            ]);
    }
}

side_x();
