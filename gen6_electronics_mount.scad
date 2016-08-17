hole_width = 100;
hole_height = 50;
extra_distance = 11;
extra_width = 35.6;
extra_height = 48;

*translate([0,0,10])
cube([100,59.69,1.6],center=true);

extra_offset = -hole_width/2-extra_distance-extra_width/2;

difference(){
    union() {
        //boardmount
        for(i=[-1,1]){
            for(j=[-1,1]){
                translate([i*hole_width/2,j*hole_height/2,1+6]){
                    cylinder(r=7/2,h=8.5-1);
                }
                translate([i*hole_width/2,j*hole_height/2,1]){
                    cylinder(r=10/2,h=8.5-1);
                }
            }
        }
        for(i=[-1,1]){
            for(j=[-1,1]){
                translate([extra_offset+i*extra_width/2,j*extra_height/2,1+6]){
                    cylinder(r=7/2,h=8.5-1);
                }
                translate([extra_offset+i*extra_width/2,j*extra_height/2,1]){
                    cylinder(r=10/2,h=8.5-1);
                }
            }
        }
        translate([extra_offset-10,-(hole_height+20)/2,0]){
            cube([hole_width+4+extra_distance+extra_width/2,70,4]);
        }
        for(j=[-1,1]){
            hull(){
                translate([(hole_width)/2,j*50/2,2]){
                    cylinder(r=10,h=4,center=true);
                }
                translate([extra_offset-extra_width/2,j*50/2,2]){
                    cylinder(r=10,h=4,center=true);
                }
            }
        }
    }
    hull(){
        for(i=[-1,1]){
            for(j=[-1,1]){
                translate([extra_offset/2+17-i*84/2,j*10/2,0]){
                    cylinder(r=10,h=10,center=true);
                }
            }
        }
    }
    //boardmount
    for(i=[-1,1]){
        for(j=[-1,1]){
            translate([i*hole_width/2,j*hole_height/2,0]){
                cylinder($fn=12,r=3.3/2,h=30,center=true);
            }
        }
    }
    for(i=[-1,1]){
        for(j=[-1,1]){
            translate([extra_offset+i*extra_width/2,j*extra_height/2,0]){
                cylinder($fn=12,r=3.3/2,h=30,center=true);
            }
        }
    }
    //boardmount
    for(i=[-1,1]){
        for(j=[-1,1]){
            translate([i*hole_width/2,j*hole_height/2,0]){
                cylinder($fn=6,r=6.2/2,h=2.4*2+6,center=true);
            }
        }
    }
    for(i=[-1,1]){
        for(j=[-1,1]){
            translate([extra_offset+i*extra_width/2,j*extra_height/2,0]){
                cylinder($fn=6,r=6.2/2,h=2.4*2+6,center=true);
            }
        }
    }
    //alumount
    for(i=[-1,1]){
        translate([extra_offset,i*50/2,0]){
            cylinder(r=5.3/2,h=10,center=true);
        }
        translate([1*(hole_width-30)/2,i*50/2,0]){
            cylinder(r=5.3/2,h=10,center=true);
        }
    }
}