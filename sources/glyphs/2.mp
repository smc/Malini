input glyph;
beginglyph;
z0 = (0, 3/4X);
z1 = (x0+ Xw/3, X);
z2 = (x1+ Xw/4, y0);
z3 = (thin/2, thick*sind(45)*0.75);
paths[0] := z0..z1..z2{down}..{dir 235}z3;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(end_nib rotated terminalangle 3 of paths[0])(3)
)(paths[0])(strokes[0]);

z4 = (0, thick*sind(45)/2) ;
z5 = (x2 + thick/2, y4) ;
paths[1] = z4--z5 ;

pen_stroke(
   nib(thick_horizontal_nib)(0,1)
)(paths[1])(strokes[1]);

endglyph;