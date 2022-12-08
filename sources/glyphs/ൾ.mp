input glyph;
beginglyph;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, thick*0.5/2);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, y0-thick*0.5/2);
z6 = (x5 + mw/2, y1);
z7 = (x6 - mw/4, y2);
z8 = (x7 - mw/4, (y7+y9)/2);
z9 = (x8 + mw/3, (y8 + y10)/2);
z10 = (x5, ascent);
z11 = (x10-mw/3, y10 - m/6);
paths[0] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6.. z7..{dir 60}z8..z9..z10..z11;

pen_stroke(
    nib(top_nib)(0)
    nib(middle_up_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib)(3,6)
    nib(top_nib)(5)
    nib(down_nib)(7)
    nib(middle_up_nib)(8)
    nib(middle_down_nib)(9)
    nib(top_nib)(10)
    nib(end_nib rotated terminalangle 11 of paths[0])(11)
)(paths[0])(strokes[0]);

endglyph;
