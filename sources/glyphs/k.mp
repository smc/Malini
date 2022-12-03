input glyph;
beginglyph;

paths[0] = l_vstem ;
z0= (xpart(point 1 of l_vstem), s/3);
z1= ( x0 + 0.66*sw, s);

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
