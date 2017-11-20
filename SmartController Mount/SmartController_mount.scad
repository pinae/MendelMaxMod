module smart_controller_mount(print_right=true) {
    w = print_right ? 28 : 9.5;
    difference() {
        union() {
            rotate([27.9, 0, 0]) {
                for(i=[0]) {
                    for(j=[0, 1]) {
                        translate([i*144.75, 19+j*50, 0]) cylinder(d=6, h=8, $fn=32);
                        translate([i*144.75, 19+j*50, 0]) cylinder(d=9, h=3, $fn=6);
                    }
                }
            }
            for(j=[0, 50.4]) {
                hull() {
                    for(i=[0, 1]) {
                        translate([-15+i*w, j+12, 0]) cylinder(d=20, h=5, $fn=64);
                    }
                }
            }
            for(i=[0]) {
                hull() {
                    translate([i*144.75, 12, 0]) cylinder(d=9, h=5, $fn=64);
                    rotate([27.9, 0, 0]) translate([i*144.75, 19, 0]) cylinder(d=9, h=2, $fn=64);
                    translate([i*144.75, 12+50.4, 0]) cylinder(d=9, h=5, $fn=64);
                    rotate([27.9, 0, 0]) translate([i*144.75, 19+50, 0]) cylinder(d=9, h=2, $fn=64);
                }
            }
        }
        rotate([27.9, 0, 0]) {
            for(i=[0]) {
                for(j=[0, 1]) {
                    translate([i*144.75, 19+j*50, -1]) cylinder(d=3.2, h=10, $fn=32);
                    translate([i*144.75, 19+j*50, -41]) cylinder(d=6.15, h=41, $fn=6);
                    translate([i*144.75, 19+j*50, -41]) cylinder(d=6.5, h=39, $fn=6);
                }
            }
        }
        for(j=[0, 50.4]) {
            for(i=[0, 1]) {
                translate([-15+i*28, j+12, -1]) cylinder(d=5.3, h=7, $fn=32);
            }
        }
    }
}
smart_controller_mount();
translate([32, 22, 0]) smart_controller_mount(false);