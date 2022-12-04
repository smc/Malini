input glyph;
beginglyph;

p:=0;
z0 = (0.75sw, 0.8s);
z1 = ((x0+x2)/2, s-thick/4);
z2 = (0, y1 - .3s);
z3 = (x2 + sw/3, (y2 + y5)/2);
z4 = (x3 + sw/8, y3);
z5 = (x0, y6 + .275s);
z6 = ((x5 + x7)/2, thick/4);
z7 = (x2 - thick/3, s/4);

paths[p] = z0..z1..z2..z3---z4..z5..z6..z7;

pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2,5)
   nib(thick_vertical_nib rotated 90)(3,4)
   nib(down_nib)(6)
   nib(end_nib rotated terminalangle 7 of paths[0])(7)
)(paths[0])(strokes[0]);

anchor( "top", (xpart(point 2 of paths[0]), X));
anchor( "bottom", (xpart(point 2 of paths[0]), 0));
endglyph;
