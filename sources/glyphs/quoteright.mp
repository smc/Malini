input glyph;
beginglyph;
z0 = (thick/2, X + m/6);
z1 = (x0, s);
paths[0] = z0{dir -20}..{dir 220}z1;
pen_stroke(
    nib(thicknib scaled 1.2 rotated terminalangle 0 of paths[p])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
endglyph;
