module raspi_mount() {
    difference() {
        union() {
            for(i=[0, 58]) {
                translate([i, 25, 2.5]) cube([10, 50, 5], center=true);
            }
            hull() {
                for(i=[0, 1]) {
                    translate([-13-27+i*(58+2*13+27), 0, 0]) cylinder(d=20, h=5, $fn=64);
                }
            }
            hull() {
                for(i=[0, 1]) {
                    translate([-13-27+i*(58+2*13+27), 50.4, 0]) cylinder(d=20, h=5, $fn=64);
                }
            }
            for(i=[0, 58]) {
                for(j=[0, 49]) {
                    translate([i, j, 0]) cylinder(d=6, h=8, $fn=32);
                }
            }
        }
        for(i=[0, 1]) {
            for(j=[0, 50.4]) {
                translate([-13-27+i*(58+2*13+27), j, -1]) cylinder(d=5.2, h=10, $fn=32);
            }
        }
        for(i=[0, 58]) {
            for(j=[0, 49]) {
                translate([i, j, 2.5+0.2]) cylinder(d=3.2, h=8, $fn=32);
                translate([i, j, -1]) cylinder(d=6.3, h=3.5, $fn=6);
            }
        }
    }
}
//raspi_mount();

module mks_mount() {
    difference() {
        union() {
            hull() {
                for(i=[0, 92]) {
                    for(j=[0, 92]) {
                        translate([i, j, 0]) cylinder(d=10, h=5, $fn=48);
                    }
                }
            }
            for(i=[0, 92]) {
                for(j=[0, 92]) {
                    translate([i, j, 0]) cylinder(d=6, h=8, $fn=32);
                }
            }
            for(i=[0, 1]) {
                for(j=[5, 55.4]) {
                    hull() {
                        translate([-13+i*121, j, 0]) cylinder(d=20, h=5, $fn=64);
                        translate([i*92, j, 2.5]) cube([0.1, 20, 5], center=true);
                    }
                }
            }
        }
        hull() {
            for(i=[7, 92-7]) {
                for(j=[7, 92-7]) {
                    translate([i, j, -1]) cylinder(d=8, h=7, $fn=48);
                }
            }
        }
        for(i=[0, 92]) {
            for(j=[0, 92]) {
                translate([i, j, -1]) cylinder(d=6.3, h=3.5, $fn=6);
                translate([i, j, 2.5+0.2]) cylinder(d=3.2, h=10, $fn=32);
            }
        }
        for(i=[0, 1]) {
            for(j=[5, 55.4]) {
                translate([-13+i*121, j, -1]) cylinder(d=5.2, h=7, $fn=32);
            }
        }
    }
}
mks_mount();