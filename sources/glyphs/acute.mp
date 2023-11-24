input glyph;
beginglyph;
z0 = (0, X);
z1 = (x0+ 0.1sw, y0 + 0.25X);
paths[0] = z0-- z1;
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[p])(0)
    nib(thick_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[0]:=point 0 of strokes[0]--point 1 of strokes[0]--point 2 of strokes[0]--point 3 of strokes[0]--cycle;
anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;
