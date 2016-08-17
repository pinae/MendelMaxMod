screwhole_diameter = 3.1;
screwhole_distance = 19;
nut_diameter=6.2;
wall_thickness = 3;
rod_diameter = 8.1;
height = 25;

module clamp() {
    difference() {
        union() {
            cylinder(d=rod_diameter+2*wall_thickness, h=height, $fn=64);
            translate([-4*wall_thickness/2, 0, 0]) {
                cube([4*wall_thickness, 1.75*rod_diameter, height]);
            }
            difference() {
                union() {
                    translate([-screwhole_distance/2, -rod_diameter/2-2.5*wall_thickness-screwhole_diameter, 0]) {
                       cube([screwhole_distance, screwhole_diameter+2*wall_thickness, height]);
                    }
                    for(i=[-1, 1]) {
                        translate([i*screwhole_distance/2, -rod_diameter/2-1.5*wall_thickness-screwhole_diameter/2, 0]) {
                            cylinder(d=screwhole_diameter+2*wall_thickness, h=height, $fn=32);
                        }
                    }
                }
                for(i=[-1, 1]) {
                    translate([i*screwhole_distance, -height/2, height-2*wall_thickness-(screwhole_distance+screwhole_diameter/2+wall_thickness)/2]) {
                        rotate([0, i*45, 0]) {
                            cube([height, height, height], center=true);
                        }
                    }
                }
                translate([0, -rod_diameter/2-3*wall_thickness-screwhole_diameter, 0]) {
                    rotate([45, 0, 0]) {
                        cube([height, height, height], center=true);
                    }
                }
            }
        }
        translate([-wall_thickness/2, 0, -1]) {
            cube([wall_thickness, 2*rod_diameter+1, height+2]);
        }
        translate([0, 0, -1]) {
            cylinder(d=rod_diameter, h=height+2, $fn=32);
        }
        for(i=[-1, 1]) {
            translate([i*screwhole_distance/2, -rod_diameter/2-1.5*wall_thickness-screwhole_diameter/2, 0]) {
                cylinder(d=nut_diameter, h=height-wall_thickness, $fn=6);
                cylinder(d=screwhole_diameter, h=height+1, $fn=16);
            }
        }
        for(i=[-1, 1]) {
            translate([i*(screwhole_distance/2-2*wall_thickness), -rod_diameter/2-1.5*wall_thickness-screwhole_diameter/2, 0]) {
                cylinder(d=1.5*screwhole_diameter, h=height+1, $fn=32);
            }
        }
        translate([0, -rod_diameter/2-1.5*wall_thickness-screwhole_diameter/2, height/2]) {
            cube([screwhole_distance/2-wall_thickness, 1.5*screwhole_diameter, height+1], center=true);
        }
        translate([0, -rod_diameter/2-3*wall_thickness-screwhole_diameter/2, height/2]) {
            cube([screwhole_distance-2*wall_thickness-screwhole_diameter/2, 2*wall_thickness+screwhole_diameter, height+1], center=true);
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
    }
}

for(i=[0, 90, 180]) {
    rotate([0, 0, i]) {
        translate([17, 10, 0]) {
            clamp();
        }
    }
}