input glyph;
beginglyph;
z0= (x1 + mw/3, 0);
z1= (0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/2, 0.4m);
z4 = ( x3 - mw/4, undershoot); % bottom middle
z5 = ( x4 - mw/4, y1);
z6 = ( (x5 + x7)/2, y2); % second top
z7 = ( x5 + mw*1.3, 0.4m);
z8 = ( x7 - mw/4, undershoot);
z9= (x8 - mw/4, (y8 + y11)/3);
z10= ((x7 + x8)/2, 0.85(y8 + y11));
z11= (x10 - mw/2, 0.9ascent);
paths[p] = z0..z1{up}..z2{right}..z3..{left}z4{left}..z5..z6..z7{down}..z8..z9..z10{up}..{dir 225}z11;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(down_nib)(8)
    nib(middle_up_nib)(9)
    nib(middle_down_nib)(10)
    nib(end_nib scaled 2/3 rotated terminalangle 11 of paths[p])(11)
)(paths[p])(strokes[p]);

anchor( "vc", point 4 of paths[0]);
anchor( "bottom", (xpart(point 7.5 of paths[0]), 0));
endglyph;
