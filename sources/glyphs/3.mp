input glyph;
beginglyph;
z0=(0, 0.8X);
z1=(x0 + Xw/3, X);
z2=(x1 + Xw/4, (y1+y3)/2);
z3=(x2 - Xw/3, 0.55X);
z4=(x3 + Xw/2.5, (y3+y5)/2);
z5=(x1, 0);
z6=(x0, 0.15X);

paths[0] = z0..z1{right}..{down}z2..{left}z3{right}..z4..{left}z5..z6;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,4)
    nib(end_nib rotated 90)(3)
    nib(down_nib)(5)
    nib(thick_nib rotated terminalangle 6  of paths[0])(6)
)(paths[0])(strokes[0]);


endglyph;