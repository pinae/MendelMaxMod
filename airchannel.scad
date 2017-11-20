use <NormParts.scad>

module airchannel() {
    difference() {
        union() {
            hull() {
                for(i=[0, 1]) {
                    for(j=[0, 1]) {
                        translate([5.75/2+i*(30-5.75), 5.75/2+j*(30-5.75), 0]) cylinder(d=5.75, h=10-2*(1-j), $fn=32);
                    }
                }
            }
            hull() {
                for(i=[0, 1]) {
                    for(j=[0, 1]) {
                        translate([5.75/2+i*(30-5.75), 5.75/2+j*(30-5.75), 10-2*(1-j)]) cylinder(d=5.75, h=0.1, $fn=32);
                        translate([(30-22.5)/2+i*22.5, (30-22.5)/2-8+j*21, 25+4.5*(1-j)]) cylinder(d=5.75, h=0.1, $fn=32);
                    }
                }
            }
            hull() {
                for(i=[0, 1]) {
                    for(j=[0, 1]) {
                        translate([(30-22.5)/2+i*22.5, (30-22.5)/2-8+j*21, 25+4.5*(1-j)]) cylinder(d=5.75, h=40-4.5*(1-j), $fn=32);
                    }
                }
            }
        }
        for(i=[0, 1]) {
            for(j=[0, 1]) {
                 translate([2.95+i*24.1, 2.95+j*24.1, -1]) cylinder(d=2.3, h=23, $fn=32);
            }
        }
        translate([15, 15, -1]) cylinder(d=28.5, h=10, $fn=64);
        hull() {
            translate([15, 15, 8.9]) cylinder(d=28.5, h=0.1, $fn=64);
            for(i=[0, 1]) {
                for(j=[0, 1]) {
                    translate([4.5+i*21, -3.5+j*19, 25+4.5*(1-j)]) cylinder(d=3, h=0.2, $fn=32);
                }
            }
        }
        hull() {
            for(i=[0, 1]) {
                for(j=[0, 1]) {
                    translate([4.5+i*21, -3.5+j*19, 25+4.5*(1-j)]) cylinder(d=3, h=50, $fn=32);
                }
            }
        }
        translate([15, -12, 42.5]) rotate([-90, 0, 0]) cylinder(d=22.5, h=31.1, $fn=64);
        translate([15, -12, 42.5]) rotate([-90, 0, 0]) cylinder(d=7, h=90, $fn=64);
        translate([(30-22.5)/2, -12, 42.5]) cube([22.5, 31.1, 50]);
        translate([11.5, -12, 42.5]) cube([7, 90, 50]);
        translate([15, 7, 57.5]) cube([33, 3.6, 5.6], center=true);
    }
}

module airchannel_clamp() {
    difference() {
        union() {
            cylinder(d=10, h=5, $fn=6);
            translate([0, 0, 5/2]) cube([33, 3, 5], center=true);
        }
        translate([0, 0, -1]) cylinder(d=6.4, h=3.5, $fn=6);
        translate([0, 0, -1]) cylinder(d=3.2, h=10, $fn=32);
    }
}

airchannel();
//translate([15, 7, 55]) airchannel_clamp();
//translate([15, -12, 42.5]) rotate([90, 180, 0]) jhead_hotend();

rotate([180, 0, 0]) translate([15, 5, -5]) airchannel_clamp();