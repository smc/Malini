input glyph;
beginglyph;
p:=0;
z0 = (0.8mw, 0.8m);
z1 = ((x0+x2)/2, m);
z2 = (0, y1 - .3m);
z3 = (x2 + mw/3, (y2 + y5)/2);
z4 = (x3 + mw/8, y3);
z5 = (x0, y6 + .275m);
z6 = (x4, thick/2);
z7 = (x2, thick/2);

paths[p] = z0..z1..z2..z3---z4..z5..{left}z6---z7 ;

pen_stroke(
   nib(start_up_nib)(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2,5)
   nib(thick_vertical_nib rotated 90)(3,4)
   nib(down_nib)(6,7)

)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point 6 of paths[p-1];
z1 = (xpart(point 5 of paths[p-1]) + thick/4, (y0+ y2)/2);
z2 = (xpart(point 1 of paths[p-1]), -descent*1.1);
z3 = (xpart(point 2 of paths[p-1])- thick/3, y1);

paths[p] = z0{dir -5}..z1..z2..z3 ;

pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(end_nib rotated 60)(3)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[0]);
anchor( "right", (xpart(point 1.25 of paths[1]), ypart(point 1.4 of paths[1])));

endglyph;
