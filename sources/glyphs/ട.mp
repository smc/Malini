input glyph;
beginglyph;
p:=0;
z0 = (0.8mw, 0.8m);
z1 = ((x0+x2)/2, m);
z2 = (0, y1 - .3m);
z3 = (x2 + mw/3, (y2 + y5)/2);
z4 = (x3 + mw/8, y3);
z5 = (x0, y6 + .275m);
z6 = ((x5 + x7)/2, 0);
z7 = (x2 - thick/3, y1-y0);

paths[p] = z0..z1..z2..z3---z4..z5..z6..z7;

pen_stroke(
   nib(start_up_nib)(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2,5)
   nib(thick_vertical_nib rotated 90)(3,4)
   nib(down_nib)(6)
   nib(end_nib rotated 120)(7)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p]);
anchor( "right", (xpart(point 5.5 of paths[p]), ypart(point 5.5 of paths[0])));

endglyph;
