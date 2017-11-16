module smart_controller_mount() {
    difference() {
        union() {
            rotate([27.9, 0, 0]) {
                for(i=[0, 1]) {
                    for(j=[0, 1]) {
                        translate([i*144.75, 19+j*50, 0]) cylinder(d=6, h=8, $fn=32);
                        translate([i*144.75, 19+j*50, 0]) cylinder(d=12, h=5, $fn=6);
                    }
                }
            }
            for(j=[0, 50.4]) {
                hull() {
                    for(i=[0, 1]) {
                        translate([-20+i*(144.75+2*20), j+12, 0]) cylinder(d=20, h=5, $fn=64);
                    }
                }
            }
            for(i=[0, 1]) {
                hull() {
                    translate([i*144.75, 12, 0]) cylinder(d=20, h=5, $fn=64);
                    rotate([27.9, 0, 0]) translate([i*144.75, 19, 0]) cylinder(d=20, h=5, $fn=64);
                    translate([i*144.75, 12+50.4, 0]) cylinder(d=20, h=5, $fn=64);
                    rotate([27.9, 0, 0]) translate([i*144.75, 19+50, 0]) cylinder(d=20, h=5, $fn=64);
                }
            }
        }
        rotate([27.9, 0, 0]) {
            for(i=[0, 1]) {
                for(j=[0, 1]) {
                    translate([i*144.75, 19+j*50, -1]) cylinder(d=3.2, h=10, $fn=32);
                    translate([i*144.75, 19+j*50, -41]) cylinder(d=6.15, h=43, $fn=6);
                    translate([i*144.75, 19+j*50, -41]) cylinder(d=6.5, h=40, $fn=6);
                }
            }
        }
        for(j=[0, 50.4]) {
            for(i=[0, 1]) {
                translate([-20+i*(144.75+2*20), j+12, -1]) cylinder(d=5.3, h=7, $fn=32);
            }
        }
    }
}
smart_controller_mount();