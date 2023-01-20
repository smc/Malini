input glyph;
beginglyph;
z0 = (thick/2, X);
z1 = (x0+ 0.25sw, y0 + s/3);

paths[0] = z0--z1;
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[0])(0)
    cut(thin_nib rotated terminalangle 1 of paths[0], 0)(1)
)(paths[0])(strokes[0]);
z2 = (x1 + 0.25sw, y0);
paths[1] =z1--z2;
pen_stroke(
    cut(thin_nib rotated terminalangle 0 of paths[1], 0)(0)
    nib(thin_nib rotated terminalangle 1 of paths[1])(1)
)(paths[1])(strokes[1]);

anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;
