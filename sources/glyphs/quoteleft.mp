input glyph;
beginglyph;
z0 = (thick/2, X + m/6);
z1 = (x0+ 0.05sw, s*1.2);
paths[0] = z0{dir 220}..{right}z1;
pen_stroke(
    nib(thinterminalnib rotated terminalangle 0 of paths[0])(0)
    nib(thicknib scaled 1.2 rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
endglyph;
