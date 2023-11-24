input glyph;
beginglyph;
z0 = (x1 + mw/3.5, m);
z1 = (mw/3, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x1 + 0.66mw, 0.4m);
z4 = (x3-0.00mw, y5-0.45m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2.5, (y5+y7)/1.5);
z7 = (0.85x5, reph_sign_depth);
z8 = (x2, y7);
z9 = (x1 - mw/3, y1);
z10 = (x9 + mw/5, y0);

paths[p] = z0{dir 215}..z1{down}..z2{right}..z3 --- z4..z5{right}.. z6{down}.. z7{dir 190}..{dir 170}z8..z9{up}..z10;
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 rotated 30)(1)
   nib(down_nib rotated -20)(2)
    nib(middle_down_nib)(3,4, 6)
    nib(top_nib)(5)
    nib(down_nib)(7)
    nib(down_nib)(8)
    nib(middle_up_nib)(9)
    nib(end_nib  rotated terminalangle infinity of paths[p])(10)
)(paths[p])(strokes[p]);
anchor( "right",  point 7 of paths[p]) ;
endglyph;
