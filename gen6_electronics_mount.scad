hole_width = 105;
hole_height = 50;

*translate([0,0,10])
cube([100,59.69,1.6],center=true);

difference(){
    union() {
        //boardmount
        for(i=[-1,1]){
            for(j=[-1,1]){
                translate([i*hole_width/2,j*hole_height/2,1]){
                    cylinder(r=7/2,h=8.5-1);
                }
            }
        }
        translate([0,0,2]){
            cube([100+20,70,4],center=true);
        }
        for(j=[-1,1]){
            hull(){
                for(i=[-1,1]){
                    translate([i*(hole_width+30)/2,j*50/2,2]){
                        cylinder(r=10,h=4,center=true);
                    }
                }
            }
        }
    }
    hull(){
        for(i=[-1,1]){
            for(j=[-1,1]){
                translate([i*70/2,j*20/2,0]){
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
    //boardmount
    for(i=[-1,1]){
        for(j=[-1,1]){
            translate([i*hole_width/2,j*hole_height/2,0]){
                cylinder($fn=6,r=6.2/2,h=2.4*2,center=true);
            }
        }
    }
    //alumount
    for(i=[-1,1]){
        for(j=[-1,1]){
            translate([i*(hole_width+30)/2,j*50/2,0]){
                cylinder(r=5.3/2,h=10,center=true);
            }
        }
    }
}