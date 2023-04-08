input glyph;
beginglyph;
z0= (x1 + mw/3, 0);
z1= (0, (y0 + y2)/2.08);
z2 = ( x1 + mw/2, m-overshoot); % top
z3 = ( x2 + mw/2, (y2+y4)/2.5);
z4 = ( x3 - mw/4, 2undershoot); % bottom middle
z5 = ( (x1+x3)/2.2, (y4+y6)/2.5);
z6 = ( (x5 + x7)/2, y2); % second top
z7 = ( x6 + mw/2, (y6+y8)/2);

z8 = (x7 - 2/3mw, -0.7descent); % ra sign starts
z9 = (x8 - mw/4,  y8); % ra sign starts
z10 = (x1 - mw/3, y1);
z11 = (x10 + mw/8, m);

paths[p] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7{down} ..z8---z9 ..z10{up}..z11;

paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(down_nib)(8,9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle infinity of paths[p])(11)
)(paths[p])(strokes[p]);

anchor( "vc", point 4 of paths[0]);
anchor( "right", point 7.75 of paths[0]);

endglyph;
