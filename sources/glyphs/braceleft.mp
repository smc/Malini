input glyph;
beginglyph;
z0 = (x1 + Xw/8, X);
z1 = (x2 + Xw/8, y2 + s/3);
z2 = (0, X/2);
z3 = (x2 + Xw/8, y2 - s/3);
z4 = (x0, 0);
paths[0] = z0{left}..z1{dir -80}..{left}z2;
paths[1] = z2{right}..z3{dir -100}..{right}z4;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(thick_nib scaled 0.8)(1)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[1])(0)
    nib(thick_nib scaled 0.8)(1)
    nib(end_nib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
endglyph;
