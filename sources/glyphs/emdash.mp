input glyph;
beginglyph;
paths[0] = (0, s/2)--(sw, s/2);
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
endglyph;
