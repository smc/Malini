input glyph;
beginglyph;

r = 0.75;
z0 = (0, 0.2s);
z1 = (x0 + sw*r, .25s);
z2 = ((x0 + x1)/2, y1 + .25s);
z3=  (x0 + thick/4, y2 + .25s);
z4=  (x1 - thick/4, 0.85s);

paths[0] = z0{dir -40}..z1..z2..z3..{dir -40}z4 ;

pen_stroke(
   nib(middle_down_nib)(1, 3,5)
   nib(thick_vertical_nib rotated 90)(2)
   nib(end_nib rotated 120)(0)
   nib(start_up_nib rotated terminalangle 0 of paths[0])(4)
)(paths[0])(strokes[0]);

anchor( "top", (xpart(point 2 of paths[0]), X));
anchor( "bottom", (xpart(point 2 of paths[0]), 0));
endglyph;
