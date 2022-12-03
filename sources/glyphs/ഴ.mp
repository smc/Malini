input glyph;
beginglyph;
z0 = (0.1mw , m);
z1 = (x0 - .1mw, y0 - m/3);
z2 = ((x1 + x3)/2, y1 - m/3);
z3 = (x2 + mw/2, y2 + m/3);
z4 = ((x3 + x5)/2, y3 + m/3);
z5 = (x4 - mw/3, y4 - .3m);
z6 = ((x5 + x7)/2, y5 - .3m);
z7 = (x6 + mw/5, y6 - .2m);
z8 = (x7 - 2/3mw, y7 - .1m);
paths[0] = z0..z1..z2..z3..z4..z5..z6..z7..{dir 135}z8;
pen_stroke(
    nib(top_nib rotated 45)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib)(4)
    nib(middle_down_nib)(5)
    nib(top_nib)(6)
    nib(middle_down_nib)(7)
    nib(end_nib rotated 45)(8)
)(paths[0])(strokes[0]);

anchor( "vc", (x4,0));
anchor( "right", point 7.4 of paths[0]);

endglyph;

