input glyph;
beginglyph;
z0=(0, 0.9X);
z1=(x0 , s/4);
z2=(x1 + sw/3, s/8);
paths[0] = z0---z1{down}..{dir 45}z2;
pen_stroke(
     nib(thick_vertical_nib)(0)
     nib(thick_vertical_nib)(1)
     nib(end_nib rotated terminalangle 2 of paths[0])(2)
)(paths[0])(strokes[0]);
%bar
z4 = (x0 - sw/6, s);
z5 = (x4 + sw/2, y4);

paths[1] = z4--z5;

pen_stroke(
     nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 2 of paths[0]), X));
anchor( "bottom", (xpart(point 2 of paths[0]), 0));
endglyph;
