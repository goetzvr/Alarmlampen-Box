
include <config.scad>;
use <bottom.scad>;
use <top.scad>;
use <side-x.scad>;
use <side-y.scad>;

spacing = 2;

module side_x_planar(cut1, cut2)
{
    rotate([-90, 0, 0])
    side_x(cut1, cut2);
}

module side_y_planar()
{
    rotate([-90, 270, 0])
    side_y();
}

module parts()
{
    side_x_planar(false, true);

    translate([0, box_z + spacing, 0])
    side_x_planar(true, false);

    translate([0, 2*(box_z + spacing), 0])
    side_y_planar();
    
    translate([0, 3*(box_z + spacing), 0])
    side_y_planar();
    
    translate([box_x + spacing, 0, 0])
    box_bottom();
    
    translate([box_x + spacing, box_y + spacing, 0])
    box_top();
}

parts();
