input glyph;
beginglyph;
paths[0] = (0, s/2)--(0.75sw, s/2);
paths[1] = paths[0] shifted(0, s/3);
pen_stroke(
    nib(thick_nib rotated terminalangle 0 of paths[0])(0)
    nib(thick_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_nib rotated terminalangle 0 of paths[1])(0)
    nib(thick_nib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
endglyph;
