input glyph;
beginglyph;
z0 = (thick/2, X + m/6);
z1 = (x0+ 0.05sw, y0 - m/3);
paths[0] = z0--z1;
pen_stroke(
    nib(thick_nib rotated terminalangle 0 of paths[0])(0)
    nib(thin_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
anchor( "top", (xpart(point 0 of paths[0]), X));
endglyph;
