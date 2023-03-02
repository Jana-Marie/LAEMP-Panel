$fn=100;

color([0, 49/255, 83/255])laemp_panel_inner3D(14, false);

module laemp_panel_inner3D(h=10, thread=false){
    union(){
        // outer hexagon
        difference(){
            rotate([0,0,90])hexagon(40,h);
            translate([0,0,-0.5])rotate([0,0,90])hexagon(36,h+1);
            // usb cutout
            translate([-33,0,3.2/2-0.5])minkowski(){
                d=2;
                cube([5,9.5-d,3.2+1-d],center=true);
                rotate([0,90,0])cylinder(d=d,h=0.1);
            }
            // 1/4" thread
            if(thread==true){
                rotate([90,0,-30])translate([0,h/2,30])thread(6.35,5.35,1.27,6,10);
            } else {
                reduce=1.6;
                rotate([90,0,-30])translate([0,h/2,30])cylinder(d=6.35-reduce, h=6);
            }
        }
        // screwholes
        translate([-17,20,0])mounting_holes(2.5,h,2);
        translate([17,-20,0])mounting_holes(2.5,h,2);
        // bridges
        translate([-17,20,h/2]){
            rotate([0,0,90])translate([3+2,0,0])cube([6,2,h],center=true);
            rotate([0,0,170])translate([5+2,0,0])cube([10,2,h],center=true);
        }
        translate([17,-20,h/2]){
            rotate([0,0,-90])translate([3+2,0,0])cube([6,2,h],center=true);
            rotate([0,0,-10])translate([5+2,0,0])cube([10,2,h],center=true);
        }
    }
}

module thread(do=10,di=9,s=1.9,h=10,res=5){
    ssize=360/res;
    for(i=[1:res:360/s*h]){
        rotate([0,0,i])translate([(do-di)/2,0,s*i/360-0.01])cylinder(h=s/ssize+0.02,d=di);
    }
}

module mounting_holes(sDia=3,h=1,wall=2){
    difference(){
        cylinder(d=wall*2+sDia,h=h);
        translate([0,0,-0.5])cylinder(d=sDia,h=h+1);
    }
}

module hexagon(x = 10, h = 1){
    cylinder(d=x*2, h=h, $fn=6);
}