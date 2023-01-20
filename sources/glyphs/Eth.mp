input glyph;
beginglyph;
z0= (0, X);
z1=( x0, y0 - 0.5X);
z2=( x1, y1 - 0.5X);
paths[0] = z0..z1..z2;

z3 = (x0, X - thin/2);
z4 = ((x3 + x5)/3, y3);
z5 = (x0 + 0.75Xw, (y4+y6)/2.04);
z6 = (x4,  y7);
z7 = (0, thin/2);

paths[1] = z3---z4..z5{down}..z6---z7 ;

pen_stroke(
    nib(thick_vertical_nib)(0, 1, 2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thin_nib rotated 90)(0, 1, 3, 4)
    nib(middle_down_nib)(2)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 1 of paths[1]), 1.2X));

clearxy;
z0 = (-sw/3, 0.525X);
z1 = (x0 + sw*0.75, y0);
paths[2]=z0--z1;
pen_stroke(
    nib(thin_nib rotated 90)(0, 1, 3, 4)
)(paths[2])(strokes[2]);

endglyph;
