input glyph;
beginglyph;

z0 = (x1 + mw/10 , m);
z1 = (0, (y0 +y2)/1.8);
z2 = ((x1 + x3)/2, m/3);
z3 = (x2 + mw/2, (y2 + y4)/1.9);
z4 = ((x3 + x5)/2, m-overshoot);
z5 = (x4 - mw/3.5, y4 - .3m);
z6 = (x5 + mw/6, .25m);
z7 = ((x5+x7)/2.1, undershoot);
z8 = (x6 - mw/2.25, y7+ 0.15m);
paths[p] = z0..z1{down}..z2{right}..z3{up}..z4{left}..z5{down}..z6{down}..{left}z7..z8;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib scaled 0.9)(1)
    nib(down_nib scaled 0.9)(2)
    nib(middle_up_nib)(3)
    nib(top_nib)(4)
    nib(middle_down_nib)(5,6)
    nib(down_nib)(7)
    nib(end_nib scaled 3/4 rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(3,3, 5, 6, 7)
)(paths[p])(strokes[p]);

anchor( "vc", (x4,0));
anchor( "right", (xpart point 7 of paths[0], 0));

endglyph;

