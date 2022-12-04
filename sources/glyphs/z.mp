input glyph;
beginglyph;

z0=(0, s - thick/4);
z1=(x0 + .75sw, y0);
z2=((x1-x0)/2, s/2);
z3=(x0,  thick/4);
z4=(x1, y3);

paths[0] = z0--z1;
paths[1] = z1--z2--z3;
paths[2] = z3--z4 ;
pen_stroke(
  nib(thin_horizontal_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
 nib(thick_vertical_nib scaled 0.75)(0,1,2)
)(paths[1])(strokes[1]);

pen_stroke(
    nib(thin_horizontal_nib)(0,1,2)
)(paths[2])(strokes[2]);
anchor( "top", (x2, X));
endglyph;
