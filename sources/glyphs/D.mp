input glyph;
beginglyph;
z0= (0, X);
z1=( x0, y0 - 0.5X);
z2=( x1, y1 - 0.5X);
paths[0] = z0..z1..z2;

z3 = (x0, X - thick/2);
z4 = (x3 + sw/3, y3);
z5 = (x4 + sw/2, 0.5X);
z6 = (x4,  y7);
z7 = (0, thick/2);

paths[1] = z3---z4..z5..z6---z7 ;

pen_stroke(
    nib(thick_vertical_nib)(0, 1, 2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thinnib)(2)
    nib(terminalnib rotated terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
endglyph;
