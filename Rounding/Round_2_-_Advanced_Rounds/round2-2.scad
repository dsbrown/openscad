pad = 0.1;	// Padding to maintain manifold
b = 10;
h = 10;
w = 4;
r = 3;	// Radius of round
smooth = 360;	// Number of facets of rounding cylinder

z = h - r*h/b - r*pow(pow(h,2)+pow(b,2),0.5)/b;
// x3 = width of cutting block
x3 = r*h/pow(pow(h,2)+pow(b,2),0.5) + r;

translate([0,0,z])
	difference() {
		translate([-x3/2,0,(h-z)/2])
			cube([x3+pad,w+2*pad,h-z],center=true);
		translate([-r,0,0])
			rotate(a=[0,90,90])
				cylinder(w+4*pad,r,r,center=true,$fn=smooth);
	}