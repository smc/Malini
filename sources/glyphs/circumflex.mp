input glyph;
beginglyph;
z0 = (thick/2, X);
z1 = (x0+ 0.25sw, y0 + s/3);
z2 = (x1 + 0.25sw, y0);
paths[0] = z0..{dir 60}z1{dir -60}..z2;
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[0])(0)
    nib(thick_nib )(1,2)
    nib(thin_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);

anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;
