input glyph;
beginglyph;
z0 = (0.75mw, y1-0.18m);
z1 = ((x0+x2)/2.25, m-overshoot);
z2 = (0, (y1  + y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0, (y3+y5)/2);
z5 = ((x4 + x6)/2, thick/2);
z6 = (x2, y5);

paths[p] = z0..z1{left}..z2{down}..z3..z4{down}..z5---z6 ;

pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib scaled 0.9)(2,4)
   nib(middle_down_nib rotated 90)(3)
   nib(down_nib)(5)
   nib(down_nib )(6)

)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point 5 of paths[p-1];
z1 = (xpart(point 4 of paths[p-1]) + thick/4, (y0+ y2)/2);
z2 = ((x1+x3)/1.75, -descent);
z3 = (xpart(point 2 of paths[p-1])- thick/3, (y0+ y2)/1.5);

paths[p] = z0{right} ..z1{down}..z2{left}..z3 ;

pen_stroke(
    nib(down_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(end_nib rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[0]);
anchor( "right", (xpart(point 1.25 of paths[1]), ypart(point 1.4 of paths[1])));

endglyph;
