input glyph;
beginglyph;
z0 = (0, 0.4s);
z1 =  (z0 +z2)/2;
z2 = (sw, 0.6s);
paths[0] = z0{dir 70}..{dir -20}z1..{dir 70}z2;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(thick_nib scaled 0.8 rotated 90)(1)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
endglyph;
