input glyph;
beginglyph;
z0= (x1 + mw/3, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, 0.975m); % top
z3 = ( x2 + mw/2, y1);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( (x5 + x7)/2, y2); % second top
z7 = ( x5 + mw*1.2, y1);
z8 = ( x7 - mw/4, y4);
z9 = ( x8 - mw/4, (y8+y10)/2);
z10 = (x9 + mw/3, (y9+y11)/2);
z11= (x9, ascent);
z12= (x11-mw/4,  y11 - m/6);
paths[0] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6..z7..z8..z9..z10..z11..z12;

pen_stroke(
    nib(start_up_nib)(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(down_nib)(8)
    nib(middle_up_nib)(9)
    nib(top_nib)(11)
    nib(end_nib)(12)
    nib(end_nib rotated terminalangle 12 of paths[0])(12)
)(paths[0])(strokes[0]);

anchor( "vc", point 4 of paths[0]);
anchor( "bottom", (xpart(point 7.5 of paths[0]), 0));
endglyph;
