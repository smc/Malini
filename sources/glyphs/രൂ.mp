input glyph;
beginglyph;
z0=(x1 + mw/4, 0);
z1=(0, y0 + m/2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/2, y1);
z4=(x3 - mw/3, thick*0.5/2);
z5=(x4 - mw/4, y4 + m/3);

paths[0] = z0..z1..z2{right}..z3..z4..{dir 90}z5;
z6= (x5 + mw/1.8, m-overshoot);
z7 = ( x6 + mw/1.8, y6-m/3);
z8 = ( x7 - mw/4, y7-m/4);
z9 = ( x8 + mw/3, (y8+y10)/2);
z10 = ( x9 - mw/2, -descent*0.8);
z11 = ( (x9+x12)/3, y10);
z12 = ( x1 - mw/3, m/2);
z13 = ( x12 + mw/6, m);
paths[0] := paths[0].. z6..z7..{left}z8{right}..z9..z10{dir 190}..{dir 170}z11..z12{up}..z13;
paths[0] := paths[0] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1, 12)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,7,9)
    nib(down_nib)(4)
    nib(end_nib rotated 90)(8)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(down_nib)(10,11)
    nib(end_nib rotated terminalangle 13 of paths[0])(13)
)(paths[0])(strokes[0]);

endglyph;
