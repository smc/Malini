input glyph;
beginglyph;
z0 = (x1 + mw/6 , m);
z1 = (0, (y0 + y2)/2);
z2 = ((x1 + x3)/2, 0.3m);
z3 = (x2 + mw/2, (y2 + y4)/1.9);
z4 = ((x3 + x5)/2, m-overshoot);
z5 = (x4 - mw/3.5, y4 - .3m);
z6 = (x5 + mw/6, .25m);
z7 = (x6 - mw/4, undershoot);
z8 = (x7 - mw/4, y7 + m/3);
z9 = (x6, 0.88(y7 + y10));
z10 = (x9-mw/2, 0.85ascent);
paths[p] = z0..z1{down}..z2..z3{up}..z4..z5{down}..z6{down}..{left}z7..z8..z9{dir 80}..{dir 260}z10;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib rotated 10 scaled 0.8)(1)
    nib(down_nib rotated -30 scaled 0.9)(2)
    nib(middle_up_nib scaled 1.2 rotated 20)(3)
    nib(top_nib)(4)
    nib(middle_down_nib scaled 0.95)(5,6)
    nib(down_nib)(7)
    nib(middle_up_nib)(8)
    nib(middle_down_nib rotated terminalangle 9 of paths[p])(9)
    nib(end_nib scaled 2/3  rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);



endglyph;

