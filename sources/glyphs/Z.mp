input glyph;
beginglyph;

z0=(0, X-thick/2);
z1=(x0 + .7Xw, y0);
z2=((x1-x0)/2, X/2);
z3=(x0, 0);
z4=(x1, 0);

paths[0] = z0--z1;
paths[1] = z1--z3;
paths[2] = z3--z4 ;
pen_stroke(
    nib(thick_vertical_nib rotated 90)(0,1)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[1])(strokes[1]);

pen_stroke(
    nib(thick_vertical_nib rotated 90)(0,1)
)(paths[2])(strokes[2]);
anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
endglyph;
