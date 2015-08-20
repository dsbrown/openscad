// circle(r=6); 
//square(8, center = true);
//cube([4,8,8], center = true);
/*
for (i = [10:50]) {
    angle = i*360/20;
    distance = i*10;
    r = i*2;
    rotate(angle, [1, 0, 0])
    translate([0, distance, 0])
    sphere(r = r);
}
*/
//sphere(r=3);
//cylinder(h = 3, r1 = 20, r2 = 18, center = true);
/*
color([1,0,0])
    cube([10,10,5], center = true);
translate([0,0,2])
    cube([8,8,3.01], center = true);
*/
/*
difference() {
    color([1,0,0])
        cylinder(h=5, r = 40);
    translate([0,0,1.5])
        cylinder(h = 3.55, r = 38);
}
*/
/*
intersection(){
    cube([10,10,10], center = true);
    
    translate([0,0,-5])
        sphere(r=4, $fn=30);
}
*/
/*
hull(){
    translate([0,0,-4])
        sphere(r=4, $fn=30);
    cube([10,10,5], center = true);
}
*/
/*
hull() {
   translate([15,10,0]) circle(10);
   circle(10);
 }
 */
/*
$fn=50;
minkowski()
{
 cube([10,10,1]);
 cylinder(r=2,h=1);
}
*/
/*
linear_extrude(height = 60, twist = 720, slices = 60) {
  difference() {
    offset(r = 10) {
      square(20, center = true);
    }
    offset(r = 8) {
      square(20, center = true);
    }
  }
}
*/
/*
linear_extrude(height = 60, twist = 720, slices = 60) {
  circle(r=20, center = true);
}