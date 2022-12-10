input glyph;
beginglyph;
z0=(0+thick/4, 0.9X);
z1=(0, s);
z2=(x1 , s/4);
z3=(x1 + sw/3, s/8);
paths[0] = z0--z1---z2{down}..{dir 45}z3;
pen_stroke(
     nib(end_nib scaled 2/3)(0)
     nib(thick_vertical_nib)(1,2)
     nib(end_nib rotated terminalangle 3 of paths[0])(3)
)(paths[0])(strokes[0]);

%bar
z4 = (x0 - sw/6, s);
z5 = (x4 + sw, y4);

paths[1] = z4--z5;

pen_stroke(
     nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);

paths[2] := paths[0] shifted(xpart(point 3 of paths[0]) + sw/5, 0);
pen_stroke(
     nib(end_nib scaled 2/3)(0)
     nib(thick_vertical_nib)(1,2)
     nib(end_nib rotated terminalangle 3 of paths[0])(3)
)(paths[2])(strokes[2]);

endglyph;
