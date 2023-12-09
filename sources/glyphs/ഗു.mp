input glyph;
beginglyph;
input ./glyphs/include/ഗ;
paths[p] := subpath (0, 5) of paths[p];
clearxy;
z0 = (xpart point infinity of paths[p] - mw/2, -m/8);
z1 = ( xpart point 2 of paths[p], y0);
z2 = ( xpart point 1 of paths[p], (y1+y3)/2);
z3 = ( x1, -descent);
z4 = ( xpart point infinity of paths[p] + thick/2, y3);
paths[p] := paths[p] ..z0---z1..z2..z3---z4;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 rotated 30)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3)
   nib(top_nib rotated 20)(4)
   nib(down_nib)(6, 7)
   nib(down_nib rotated 70)(8)
   nib(thick_horizontal_nib)(9, 10)
)(paths[p])(strokes[p]);

anchor( "vc", point 3 of paths[p]);
endglyph;
