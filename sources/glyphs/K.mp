input glyph;
beginglyph;
z0=(0, X);
z1=(x0, y0- .5X);
z2=(x1, 0);

paths[0] = z0--z1--z2;

clearxy;
z0= (xpart(point 1 of paths[0]), X/3);
z1= ( x0 + Xw/2, X);

paths[1] = z0--z1;
z2 = point .3 of paths[1];
z3 = (x1 + thick/2, 0);

paths[2] = z2--z3;
pen_stroke(
 nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[1])(strokes[1]);
pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[2])(strokes[2]);
endglyph;
