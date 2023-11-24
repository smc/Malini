input glyph;
beginglyph;
z0 = (0, X);
z1 = (x0+ 0.1sw, y0 + 0.2X);
paths[0] = z0-- z1;
pen_stroke(
    nib(thinterminalnib rotated terminalangle 0 of paths[p])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[0]:=point 0 of strokes[0]--point 1 of strokes[0]--point 2 of strokes[0]--point 3 of strokes[0]--cycle;

paths[1] := paths[0] shifted(sw/4, 0);

pen_stroke(
    nib(terminalnib rotated terminalangle 0 of paths[1])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
strokes[1]:=point 0 of strokes[1]--point 1 of strokes[1]--point 2 of strokes[1]--point 3 of strokes[1]--cycle;

anchor( "top", ((xpart(point 1 of paths[0]) + xpart(point 1 of paths[1]))/2 , X));
endglyph;
