input glyph;
beginglyph;

paths[0] = l_vstem ;

clearxy;
z0 = (xpart (point 0 of paths[0]), X-thick*sind(55)/2);
z1 = (x0 + Xw/6, y0);
z2 = (x1 + Xw/3, (y1+y3)/2);
z3 = (x1, y4);
z4 = point 1.25 of paths[0];
paths[1] = z0--z1{right}..z2{down}..{left}z3--z4;

pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(top_nib)(0,1)
    nib(end_nib rotated 90)(3,4)
    nib(middle_down_nib)(2)
)(paths[1])(strokes[1]);

endglyph;
