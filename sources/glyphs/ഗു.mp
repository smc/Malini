input glyph;
beginglyph;
p:=0;
paths[p] := subpath (0, 5) of ga;

z0 = (xpart point infinity of paths[p] - mw/2, -m/8);
z1 = ( xpart point 2 of paths[p], y0);
z2 = ( xpart point 1 of paths[p], (y1+y3)/2);
z3 = ( x1, -descent);
z4 = ( xpart point infinity of paths[p] + thick/2, y3);
paths[p] := paths[p] ..z0---z1..z2..z3---z4;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 5)
   nib(top_nib)(4)
   nib(down_nib)(6)
   nib(down_nib)(7)
   nib(middle_up_nib)(8)
   nib(thick_horizontal_nib)(9,10)
)(paths[p])(strokes[p]);

anchor( "vc", point 3 of paths[p]);
endglyph;
