input glyph;
beginglyph;

z0 = (x1 + mw/6 , m);
z1 = (0, (y0 + y2)/2);
z2 = ((x1 + x3)/2, 0.3m);
z3 = (x2 + mw/2, (y2 + y4)/1.9);
z4 = ((x3 + x5)/2, m-overshoot);
z5 = (x4 - mw/3.5, y4 - .3m);
z6 = (x5 + mw/5, (y5+y7)/2);
z7 = ((x5+x7)/2, -undershoot);
z8 = (x6 - mw/1.75, y7+ 0.15m);
paths[p] = z0..z1..z2..z3..z4..z5..z6..z7..z8;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib rotated 10 scaled 0.8)(1)
    nib(down_nib rotated -30 scaled 0.9)(2)
    nib(middle_up_nib scaled 1.2 rotated 20)(3)
    nib(top_nib)(4)
    nib(middle_down_nib scaled 0.95)(5,6)
    nib(down_nib)(7)
    nib(end_nib scaled 3/4 rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(5, 6, 7)
)(paths[p])(strokes[p]);

anchor( "vc", (x4,0));
anchor( "right", point 6.75 of paths[p] );

endglyph;

