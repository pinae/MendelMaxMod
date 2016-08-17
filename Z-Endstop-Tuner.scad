screw_diameter = 4.95;
gap = 0.1;
thickness = 5;
flag_thickness = 1;
height = 70;
base_height = 3;
min_spring_height = 17;

module holder() {
    difference() {
        translate([-thickness/2+flag_thickness/2, 0, 0]) {
            cube([thickness, 15, 70]);
        }
        translate([-gap, -5-1, base_height]) {
            cube([flag_thickness+2*gap, 10+gap+1, height-base_height+1]);
        }
        translate([screw_diameter/2, 5, base_height]) {
            cylinder(d=screw_diameter+gap, h=height-base_height+1, $fn=32);
        }
    }
}

module flag() {
    union() {
        translate([0, -5, base_height+min_spring_height]) {
            cube([flag_thickness, 10, height-base_height-min_spring_height]);
        }
        translate([(screw_diameter-gap)/2, 5, base_height+min_spring_height]) {
            cylinder(d=screw_diameter-gap, h=height-base_height-min_spring_height, $fn=32);
        }
    }
}

holder();
color([0.8, 0, 0]) flag();