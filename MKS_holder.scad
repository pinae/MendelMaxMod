module MKS_holder() {
    difference() {
        union() {
            cylinder(d=20, h=4, $fn=32);
        }
    }
}

MKS_holder();