input glyph;
beginglyph;

z0= (x1 + Xw/3, 0.9X);
z1 = (x3 + 0.05Xw, 3/4X);
z2 = (x1 + Xw/4, 0.6X);
z3 = (0, X/4);
z4 = (x3 + Xw/3, 0);
z5 = (x2 + Xw/4, 0.5X);

paths[0] = z0{dir 120}..z1..{right}z2{left}..z3..{dir 10}z4..z5;
clearxy;
z0 = (Xw/3, X/4);
z1 = (x0 + Xw*0.4, 2/3X);
paths[1] = z0{dir 80}..point infinity of paths[0]..{dir 80}z1;
pen_stroke(
    nib(middle_down_nib)(1, 3)
    nib(down_nib)(4)
    nib(end_nib rotated terminalangle 2 of paths[0])(2)
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 1 of paths[1])(1)
    nib(end_nib rotated terminalangle 0 of paths[1])(0)
    nib(end_nib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
endglyph;
