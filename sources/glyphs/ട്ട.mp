input glyph;
beginglyph;
z0 = (0, .125m);
z1 = (x0 + mw/3, 0);
z2 = (x1 + mw/3, y1 + .2m);
z3 = (x1, y2 + .3m);
z4=  (x0, y3 + .275m);
z5=  (x1, m);
z6=  (x2, 0.8m);
paths[0] = z0..z1..z2..z3..z4..z5..z6 ;

z10 = z1;
z11 = (x2  + thick/2, y10 - m/4);
z12 = (x3, y11 - m/4);
z13 = (x0 - thick/2, y12+ 0.1m);

paths[1] = z10{right}..z11..z12..z13 ;

pen_stroke(
   nib(start_up_nib)(0)
   nib(top_nib)(1)
   nib(middle_up_nib)(2)
   nib(thick_vertical_nib rotated 90)(3)
   nib(middle_up_nib)(4)
   nib(top_nib)(5)
   nib(start_up_nib)(6)
)(paths[0])(strokes[0]);

pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(end_nib rotated -60)(3)
)(paths[1])(strokes[1]);

anchor( "vc", point 1 of paths[0]);
anchor( "right", (xpart(point 1.25 of paths[1]), ypart(point 1.4 of paths[1])));

endglyph;
