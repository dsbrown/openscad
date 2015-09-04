pad = 0.1;	// Padding to maintain manifold
smooth = 100;	// Number of facets of rounding cylinder
inside = 45;
outside = 42;
height = 6;
width = 20;
scale = 0.8;

module hollow_torrus(outside,inside, height, pad,smooth) {
    height = outside;
//    difference(){
//        rotate_extrude(convexity = 10, $fn=smooth)
//        translate([outside, 0, 0])
//        union(){
//            rotate(a=180) translate([0, -outside/2, 0]) 
//            square([height,height]);
            //circle(r = outside/2, $fn=smooth);
//        }
//        cylinder(h = height+pad,r = inside,$fn=smooth, center=true);
//        }
}

difference(){
    hollow_torrus(outside,inside, height, pad,smooth);
    hollow_torrus(outside*.8,inside*.8, height, pad,smooth);
}


//rotate_extrude(convexity = 10, $fn=smooth)
//rotate(180){
translate([width-(width+height)/2, 0, 0]) 
    square([width-height,height],center=true);
//translate([width-height, 0, 0]) 
//    circle(r = height/2, $fn=smooth);
//}
   
square([width,height]);