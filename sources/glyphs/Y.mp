input glyph;
beginglyph;
save w;
z0=(0, X);
z1=(x0 + Xw/3, 0.4X);
z2=(x1, 0);

z3=(x0 + 2Xw/3, X);
z4=(x1, y1);

paths[0] = z0--z1 ;
paths[1] = z3--z4;
paths[2] = z1--z2;

pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);

pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[2])(strokes[2]);
anchor( "top", (xpart(point 1 of paths[2]), 1.2X));
endglyph;
