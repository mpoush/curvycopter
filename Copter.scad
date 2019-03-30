size=1;
diag = size/4;
amt = 0.75;
gap = 0.01;
distance = sqrt(pow(amt, 2) + pow(amt - 2*diag, 2));
res=80;

difference() {
    cube(size =size, center=true);

    translate([amt, 0, amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([-amt, 0, amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([0, -amt, amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([0, amt, amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([amt, amt, 0]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([-amt, amt, 0]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([amt, -amt, 0]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([-amt, -amt, 0]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([amt, 0, -amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([-amt, 0, -amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([0, -amt, -amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }

    translate([0, amt, -amt]) {
        difference() {
            sphere(r = distance+gap, $fn=res);
            sphere(r = distance-gap, $fn=res);
        }
    }
}
