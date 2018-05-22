
include <config.scad>;
use <snap-joint/snap-nut.scad>;
use <nrfduino.scad>;
use <relay.scad>;

module side_x(
            cutout_nrfduino=false,
            cutout_relay=true
            )
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

        // Snap nuts
        for (x = [
                material_z/2 + side_y_inset,
                box_x - material_z/2 - side_y_inset
                ])
        {
            scale([1, 2, 1])
            translate([x, 0, box_z/2])
            rotate([0, 90, 0])
            snap_nut_cutout();
        }

        // Holes for the nRFduino
        if (cutout_nrfduino)
        {
            translate([
                nrfduino_offset_x,
                0,
                nrfduino_offset_z,
                ])
            rotate([90, 0, 0])
            nrfduino();
        }

        // Holes for the relay
        if (cutout_relay)
        {
            translate([
                relay_offset_x,
                0,
                relay_offset_z
                ])
            rotate([90, 0, 0])
            relay();
        }
    }
}

side_x();
