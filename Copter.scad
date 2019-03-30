size=1;
diag = size/4;
amt = 0.75;
gap = 0.01;
distance = sqrt(pow(amt, 2) + pow(amt - 2*diag, 2));
res=100;

module circle_hull(x=0,y=0,z=0){
    translate([x*amt,y*amt,z*amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }
}

difference() {
    cube(size =size, center=true);
    circle_hull(-1, -1,  0);
    circle_hull(-1,  0, -1);
    circle_hull(-1,  0,  1);
    circle_hull(-1,  1,  0);
    circle_hull( 0, -1, -1);
    circle_hull( 0, -1,  1);
    circle_hull( 0,  1, -1);
    circle_hull( 0,  1,  1);
    circle_hull( 1, -1,  0);
    circle_hull( 1,  0, -1);
    circle_hull( 1,  0,  1);
    circle_hull( 1,  1,  0);
}
