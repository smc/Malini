input glyph;
beginglyph;
z0 = (x4, 0.8m);
z1 = (x5, m);
z2 = (0, y3 + .275m);
z3 = (x5, y4 + .3m);
z4 = (x5 + mw/3, y5 + .2m);
z5 = (x2 + mw/3, 0);
z6 = (x2, y1-y0);

paths[0] = z0..z1..z2..{right}z3{right}..z4..z5..z6;

pen_stroke(
   nib(start_up_nib)(0)
   nib(top_nib)(1)
   nib(middle_up_nib)(2)
   nib(thick_vertical_nib rotated 90)(3)
   nib(middle_up_nib)(4)
   nib(top_nib)(5)
   nib(start_up_nib)(6)
)(paths[0])(strokes[0]);

anchor( "vc", z1);
anchor( "right", (xpart(point 4.25 of paths[0]), ypart(point 4.4 of paths[0])));

endglyph;
