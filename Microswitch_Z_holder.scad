module microswitsch_Z_Holder() {
    screwhole_diameter = 3.1;
    screwhole_distance = 19;
    nut_diameter=6.3;
    wall_thickness = 3;
    rod_diameter = 8.1;
    height = 17;
    difference() {
        union() {
            cylinder(d=rod_diameter+2*wall_thickness, h=height, $fn=64);
            translate([-4*wall_thickness/2, 0, 0]) {
                cube([4*wall_thickness, 1.75*rod_diameter, height]);
            }
            hull() {
                translate([-15, -20, height]) cube([12.75, 20-5.6, 6.2]);
                translate([-5, -7, 0]) cylinder(d=10, h=10, $fn=64);
            }
        }
        translate([-wall_thickness/2, 0, -1]) {
            cube([wall_thickness, 2*rod_diameter+1, height+2]);
        }
        translate([0, 0, -1]) {
            cylinder(d=rod_diameter, h=height+20, $fn=32);
        }
        for(i=[wall_thickness+screwhole_diameter/2, height-wall_thickness-screwhole_diameter/2]) {
            translate([-rod_diameter, 1.25*rod_diameter, i]) {
                rotate([0, 90, 0]) {
                    cylinder(d=screwhole_diameter, h=2*rod_diameter, $fn=16);
                    cylinder(d=nut_diameter, h=rod_diameter-1.5*wall_thickness, $fn=6);
                }
            }
            translate([wall_thickness, 1.25*rod_diameter, i]) {
                rotate([0, 90, 0]) {
                    cylinder(d=nut_diameter, h=rod_diameter-1.5*wall_thickness, $fn=16);
                }
            }
        }
        for(i=[0, 1]) {
            translate([-15+(12.75-6.3)/2+i*6.3, -20-1, height+6.2-5+1]) rotate([-90, 0, 0]) cylinder(d=2.3, h=25, $fn=32);
            translate([-15+(12.75-6.3)/2+i*6.3, -5.6-1.6, height+6.2-5+1]) rotate([-90, 30, 0]) cylinder(d=4.65, h=4, $fn=6);
        }
    }
}

microswitsch_Z_Holder();