holeDistance = 31;
width = 42.2;
height = 5;
diagonal = 53.85;
innerDiameter = 32;
screwDiameter = 3;

module holderplate() {
    difference() {
        union() {
            cylinder(d=diagonal, h=height, $fn=128);
        }
        for(i = [-3, 1]) {
            translate([i*width/2, -width/2, -1]) {
                cube([width, width, height+2]);
            }
            translate([-width/2, i*width/2, -1]) {
                cube([width, width, height+2]);
            }
        }
        for(x = [-1, 1]) {
            for(y = [-1, 1]) {
                translate([x*holeDistance/2, y*holeDistance/2, -1]) {
                    cylinder(d=screwDiameter, h=height+2, $fn=16);
                }
            }
        }
        translate([0, 0, -1]) {
            cylinder(d=innerDiameter, h=height+2, $fn=64);
        }
    }
}

for(x = [-1, 1]) {
    for(y = [-1, 1]) {
        translate([x*(width/2+1), y*(width/2+1), 0]) {
            holderplate();
        }
    }
}