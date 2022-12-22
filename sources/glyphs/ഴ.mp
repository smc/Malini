input glyph;
beginglyph;
z0 = (x1 + mw/8 , m);
z1 = (0, y0 - m/3);
z2 = ((x1 + x3)/2, m/3);
z3 = (x2 + mw/2, y2 + m/3);
z4 = ((x3 + x5)/2, y3 + m/3);
z5 = (x4 - mw/3.5, y4 - .3m);
z6 = (x5 + mw/6, .3m);
z7 = (x6 - 0.5mw, thin);
paths[0] = z0..z1..z2..z3..z4..z5..z6..{dir 135}z7;
pen_stroke(
    nib(top_nib rotated 45)(0)
    nib(middle_down_nib scaled 0.9)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib)(4)
    nib(middle_down_nib)(5,6)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);

anchor( "vc", (x4,0));
anchor( "right", (xpart point 6.3 of paths[0], 0));

endglyph;

