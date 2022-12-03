input glyph;
beginglyph;

z0=(0, X);
z1=(x0, X/2);
z2=(x1, 0);
z3=(x0 + 0.6X, X);
z4=(x3, X/2);
z5=(x4, 0);


paths[0] = z0--z2;
paths[1] = z3--z5;
z6 = point 0.5 of paths[0];
z7 = point 0.5 of paths[1];
paths[2]:= z6..z7;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);
pen_stroke(
     nib(end_nib rotated 90)(0,1)
)(paths[2])(strokes[2]);
anchor( "top", (xpart(point 0.5 of paths[2]), 1.2X));
endglyph;
