input glyph;
beginglyph;
z0 = (0, 3/4y1);
z1 = ((x0+ x2)/2, X-overshoot);
z2 = (x0+ Xw/2.5, 0.8y1);
z3 = (thin/2, 0.45m+thick*sind(45)*0.75);
paths[0] := z0..z1{right}..z2{dir -82}..{dir 210}z3;

pen_stroke(
    nib(end_nib scaled 0.8rotated terminalangle 0 of paths[0])(0)
    nib(top_nib scaled 0.8)(1)
    nib(middle_down_nib scaled 0.8)(2)
    nib(end_nib scaled 0.8 rotated terminalangle 3 of paths[0])(3)
)(paths[0])(strokes[0]);

z4 = (0, 0.45m + thick*sind(45)/2) ;
z5 = (x2 + thick/2, y4) ;
paths[1] = z4--z5 ;

pen_stroke(
   nib(thick_horizontal_nib scaled 0.8)(0,1)
)(paths[1])(strokes[1]);

endglyph;