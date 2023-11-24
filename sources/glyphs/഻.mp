input glyph;
beginglyph;
z0 =(0, y1 + .4m);
z1 =(0, m*1.1);
paths[0] = z0..z1;
pen_stroke(
    nib(thick_nib rotated terminalangle 0 of paths[p])(0)
    nib(thin_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
paths[0] := paths[0] shifted (-x1, 0);
rbearing:= -x1 - thick;
strokes[0]:=point 0 of strokes[0]--point 1 of strokes[0]--point 2 of strokes[0]--point 3 of strokes[0]--cycle;
endglyph;
