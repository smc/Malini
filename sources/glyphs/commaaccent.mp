input glyph;
beginglyph;
z0 = (thick/4, -descent);
z1 = (x0, 0);
paths[0] = z0{dir 45}..{left}z1;
pen_stroke(
    nib(thicknib scaled 1.2 rotated terminalangle 1 of paths[0])(1)
    nib(thinterminalnib rotated terminalangle 0 of paths[p])(0)
)(paths[0])(strokes[0]);
anchor( "bottom", point 1 of paths[0]);
endglyph;
