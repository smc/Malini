input glyph;
beginglyph;
down_nib_width = thick*contrast*down_nib_scale/2;
z0 = (0.75mw, y1-0.12m);
z1 = ((x0+x2)/2.2, m-overshoot);
z2 = (0, (y1  + y3)/2.05);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0-down_nib_width/2, (y3+y5)/2);
z5 = ((x4 + x6)/1.8, undershoot);
z6 = (x2, y5);

paths[p] = z0..z1 ..z2{down}..z3..z4{down}..z5---z6 ;

pen_stroke(
   nib(start_up_nib scaled 1.2 rotated terminalangle 0 of paths[p])(0)
   nib(top_nib rotated 30)(1)
   nib(middle_down_nib scaled 0.9)(2,4)
   nib(middle_down_nib rotated 60)(3)
   nib(down_nib scaled 1.1 rotated 10)(5)
   cut(down_nib, rel 90 )(6)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point 5 of paths[p-1];
z1 = (xpart(point 4 of paths[p-1])  , (y0+ y2)/2);
z2 = ((x1+x3)/1.75, -descent);
z3 = (xpart(point 2 of paths[p-1])- thick/3, (y0+ y2)/1.25);

paths[p] = z0{right} ..z1{down}..z2{left}..z3 ;

pen_stroke(
    nib(down_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(end_nib rotated terminalangle 3 of paths[p])(3)
    ignore_directions(1,2)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[0]);
anchor( "right", (xpart(point 1.25 of paths[1]), ypart(point 1.4 of paths[1])));

endglyph;
