pad = 0.10;
trim = 1; // size of rims on outside of case
height = 10;
width = 42/2;
thickness = 3;
smooth = 100;
//crystal = 26.5 - 33 mm

module outside_case(height, width, trim, pad, smooth){
    rotate_extrude(convexity = 10, $fn=smooth){
        rotate([0,0,0]) {
            square([width,height]);
            translate([width,trim,0])
                circle(trim,$fn=smooth);
            translate([width, height-trim ,0])
                circle(trim,$fn=smooth);
        }
    }
}

difference() {
    color( "chartreuse", 1 ) { 
        outside_case(height, width, trim, pad, smooth);
    }
    color( "red",1 ) translate([0,0,-pad])
                cylinder(h = height+2*pad, r = width-thickness, $fn = smooth);
}

//rotate_extrude(convexity = 10){
//    rotate(180,-90,-90){
//        square([height,1]);
//        translate([trim,trim,0])
//            circle(trim,$fn=smooth);
//        translate([height-trim,trim,0])
//            circle(trim,$fn=smooth);
//    }
//}