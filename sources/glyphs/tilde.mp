input glyph;
beginglyph;
z0 = (0, 0.85X);
z1 =  (z0 +z2)/2;
z2 =(0.5Xw, X);
paths[0] = z0{dir 80}..{dir -30}z1..{dir 80}z2;
pen_stroke(
    nib(end_nib  scaled 0.5 rotated terminalangle 0 of paths[0])(0)
    nib(thick_nib scaled 0.8 rotated 90)(1)
    nib(end_nib  scaled 0.5 rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;
