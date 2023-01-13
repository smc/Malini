input glyph;
beginglyph;
z0=(0, 0);
z1=(x0 + 0.05mw , m/2);
z2=(x0, m);
paths[0] = z0--z2;
pen_stroke(
    nib(thick_nib)(0, 1)
)(paths[0])( strokes[0]);

clearxy;
z0 = point infinity of paths[0] - (0, thin/2);
z1 = (x0+ 2/3mw, y0);
paths[1] = z0--z1;
pen_stroke(
     nib(thin_nib rotated 90)(0, 1)
)(paths[1])( strokes[1]);

clearxy;
z0 = point infinity of paths[1];
z1 = (x0 - mw/3, y0-m/2);
z2 = (x1 + mw/3, 0);
z3 = (x2 + mw/2, y1);
z4 = (x3 - mw/4, y0);
paths[2] = z0..z1..z2{right}..z3..z4;
pen_stroke(
    cut(end_nib rotated terminalangle 0 of paths[2], 90)(0)
    nib(middle_up_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[2])(4)
)(paths[2])( strokes[2]);
endglyph;
