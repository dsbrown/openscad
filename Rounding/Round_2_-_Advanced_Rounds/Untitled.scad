pad = 0.1;	// Padding to maintain manifold
r = 4;
smooth = 100;	// Number of facets of rounding cylinder

rotate_extrude(convexity = 1, $fn=smooth)
translate([2, 0, 0])
circle(r = 1, $fn=100);
