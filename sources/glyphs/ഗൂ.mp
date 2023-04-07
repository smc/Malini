input glyph;
beginglyph;
p:=0;
paths[p] := subpath (0, 4) of ga;
z5 = (xpart point infinity of paths[p], m-overshoot);
z6 = (x5 + mw/2.5, (y5+y7)/2);
z7 = (x6 - mw/3, (y6+y8)/2);
z8 = (x7 + mw/2.5, (y7+y9)/2);
z9 = (x8 - mw/2, -m/8);
z10 = ( xpart point 2 of paths[p], y9);
z11 = ( xpart point 1 of paths[p], (y10+y12)/2);
z12 = ( x10, -descent);
z13 = ( x8+thick/2, y12);
paths[p] := paths[p].. z6{down}..{left}z7{right}..z8{down}..z9---z10..z11{down}..z12---z13;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 5)
   nib(top_nib)(4)
   nib(end_nib rotated 90)(6)
   nib(middle_down_nib)(7)
   nib(down_nib)(8)
   nib(down_nib)(9)
   nib(down_nib rotated 90)(10)
   nib(thick_horizontal_nib)(11,12)
)(paths[p])(strokes[p]);
anchor( "vc", point 3 of paths[p]);
endglyph;
