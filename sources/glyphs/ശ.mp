input glyph;
beginglyph;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2, (y5+y7)/2.4);
z7 = (x6 - mw/4, y2);
z8 = (x7 - mw/4, y6);
paths[0] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6{down}.. z7..z8;
z9 = point 5.66 of paths[0];
y8 := (y6+y8)/2;
paths[0] := z0{dir 215}..z1..z2..z3 --- z4..z5.. z6{down}.. z7..z8..z9;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,4, 6)
   nib(top_nib)(5)
   nib(down_nib)(7)
   nib(middle_up_nib)(8)
   nib(top_nib)(9)
)(paths[0])(strokes[0]);
anchor( "bottom", (xpart(point 6 of paths[0]), 0));
endglyph;
