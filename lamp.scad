$fn = 100;
sidelenth=40;
height=180;

#color("darkgrey")
//for(r=[0:60:300])rotate([0,0,r])translate([sidelenth*sqrt(3)/2+0.5,0,0])rotate([0,-90,0])wall_1(height,sidelenth);

wall_1(height,sidelenth);

//color("grey")translate([0,0,height])hexagon(sidelenth,true);

//color("grey")translate([0,0,10])hexagon(sidelenth,true);

//color("grey")translate([0,0,20])hexagon(sidelenth,true);

module wall_1(h=100,l=40,t=0.8){
    difference(){
        union(){
            translate([h/2,0,0])square([h,l],center=true);
        } union(){
            _xoff=32;
            _xdiff=28;
            for(i = [0:1:10]){
                for(k = [-1:1:1]){
                    _d = rands(3,15,1)[0];
                    echo(_d,k%2==0 ? _xoff+(i*_xdiff):_xoff+((i*_xdiff)+(_xdiff/2)),(k*_xdiff/2.5));
                    translate([k%2==0 ? _xoff+(i*_xdiff):_xoff+((i*_xdiff)+(_xdiff/2)),(k*_xdiff/2.5),0])
                        
                        circle(d=_d);
                }
            }
        }
    }
}

module hexagon(s, center=false){
    l = sqrt(3) * s;
    tr = center ? [0, 0, 0] : [s, l / 2, 0];
    translate(tr)for(r =[-60,0,60])rotate([0,0,r])square([l,s],center=true);
}