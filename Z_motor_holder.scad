use <Nema17.scad>

module Z_motor_holder() {
    difference() {
        union() {
            translate([-30, 0, 0]) cube([60, 50, 10]);
            translate([-30, 0, 0]) cube([60, 5, 52]);
            for(i=[-1, 1]) {
                hull() {
                    translate([i*30, 45, 0]) cylinder(d=10, h=10, $fn=32);
                    translate([i*30, 5, 0]) cylinder(d=10, h=52, $fn=32);
                }
            }
        }
        translate([0, -1, 31]) rotate([-90, 0, 0]) cylinder(d=25, h=7, $fn=64);
        for(i=[-1, 1]) {
            for(j=[0, 1]) {
                translate([i*15.5, -1, 15.5+j*31]) rotate([-90, 0, 0]) cylinder(d=3.3, h=7, $fn=64);
                translate([i*15.5, -1, 15.5+j*31]) rotate([-90, 0, 0]) cylinder(d=7.8, h=3, $fn=64);
                translate([i*50.4/2, 15+j*20, -1]) cylinder(d=5.5, h=90, $fn=32);
                translate([i*50.4/2, 15+j*20, 5]) cylinder(d=10.8, h=90, $fn=32);
            }
        }
        translate([-5, 43, -1]) cube([10, 13, 15]);
    }
}

Z_motor_holder();
//translate([0, 47+5, 31]) rotate([90, 0, 0]) Nema17();