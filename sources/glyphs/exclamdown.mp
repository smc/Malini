input glyph;
beginglyph;
z0= (0, - 0.2X);
z1=( x0, y0 + 0.7X);

paths[0] = z0---z1;
paths[1] = fullcircle scaled (thick*1.5) shifted(0, s);

pen_stroke(
    nib(thicknib scaled 1.25 rotated terminalangle 0 of paths[p])(0)
    nib(thicknib scaled 0.5 rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[1] = paths[1];

endglyph;
