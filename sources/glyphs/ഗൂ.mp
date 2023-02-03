input glyph;
beginglyph;

% FIXME
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2.5, (y5+y7)/2);
z7 = (x6 - mw/3, (y6+y8)/2);
z8 = (x7 + mw/2.5, (y7+y9)/2);
z9 = (x8 - mw/2, -m/8);
z10 = ( x2, y9);
z11 = ( x1, (y10+y12)/2);
z12 = ( x10, -descent);
z13 = ( x8+thick/2, y12);
paths[p] = z0{dir 215}..z1{down}..z2{right}..z3 --- z4..z5{right}.. z6{down}..{left}z7{right}..z8{down}..z9---z10..z11{down}..z12---z13;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,4, 6)
   nib(top_nib)(5)
   nib(end_nib rotated 90)(7)
   nib(middle_down_nib)(8)
   nib(down_nib)(9)
   nib(down_nib)(10)
   nib(down_nib rotated 90)(11)
   nib(thick_horizontal_nib)(12,13)
)(paths[p])(strokes[p]);
anchor( "vc", point 4 of paths[p]);
endglyph;
