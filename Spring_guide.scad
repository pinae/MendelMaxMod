module spring_guide_block() {
    difference() {
        union() {
            difference() {
                hull() {
                    for(i=[0, 15.5]) {
                        translate([i, 0, 0]) cylinder(d=11, h=3, $fn=64);
                    }
                }
                for(i=[0, 15.5]) {
                    translate([i, 0, 1]) cylinder(d=10, h=5, $fn=64);
                }
            }
            for(i=[0, 15.5]) {
                translate([i, 0, 1]) cylinder(d=7.5, h=2, $fn=64);
            }
        }
        for(i=[0, 15.5]) {
            translate([i, 0, -1]) cylinder(d=4.1, h=90, $fn=64);
        }
    }
}

module spring_guide() {
    difference() {
        union() {
            cylinder(d=7.5, h=4, $fn=64);
            cylinder(d=11, h=2, $fn=64);
        }
        translate([0, 0, -1]) cylinder(d=7.4, h=2.5, $fn=64);
        translate([0, 0, 1]) cylinder(d=4.1, h=9, $fn=64);
    }
}
   
spring_guide();
translate([12, 0, 0]) spring_guide();
translate([0, 12, 0]) spring_guide_block();