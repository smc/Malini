input glyph;
beginglyph;
z0 =(0, y1 + m/3);
z1 =(0, m*1.2);
paths[0] = z0--z1;
pen_stroke(
    nib(thicknib scaled 1.1 rotated terminalangle 0 of paths[0])(0)
    nib(thin_nib scaled 2/3 rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
rbearing:= 0;
lbearing:= 0;
anchor( "vc", point 0 of paths[0]);
endglyph;
