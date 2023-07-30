input glyph;
beginglyph;
z0= (x1 + mw/3, 0);
z1= (0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/2, (y2+y4)/2.5);
z4 = ( x3 - mw/4, 2undershoot); % bottom middle
z5 = ( (x1+x3)/2.2, (y4+y6)/2.5);
z6 = ( (x5 + x7)/2, y2); % second top
z7 = ( x6 + mw/2, y6-m/4);
z8 = ( x7 - mw/3, y7-m/4);
z9 = ( x8 + mw/2.5, y8-m/3);
z10 = ( x6, y0 - m/6); %
z11 = ( x8 - 3/4mw, y10);
z12 = ( x1, (y11+y13)/2);
z13 = ( x11, -descent);
z14 = ( x7+thick/2, y13);
paths[0] = z0..z1{up}..z2{right}..z3..{left}z4{left}..z5..z6{dir 10}..z7{down}..{left}z8{right}..z9..z10---z11..z12..z13---z14;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7, 9)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(thin_vertical_nib rotated 90)(8)
    nib(down_nib)(10)
    nib(down_nib)(11)
    nib(down_nib rotated 90)(12)
    nib(thick_horizontal_nib)(13,14)
)(paths[0])(strokes[0]);

endglyph;
