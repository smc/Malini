input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (mw/3, y0 - m/2);
z2 = (x1 + mw/3, thick*0.5/2);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, y0-thick*0.5/2);
z6 = (x5 + mw/3, y1);
z7 = (x6 - mw/3, -m/4);
z8 = (x7 - mw, y7);
z9 = (x1 - mw/3, y1);
z10 = (x9 + mw/5, y0);

paths[p] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6.. z7..z8..z9..z10;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib)(3,6)
    nib(top_nib)(5)
    nib(thin_vertical_nib rotated -45)(7)
    nib(thin_vertical_nib rotated 90)(8)
    nib(middle_up_nib)(9)
    nib(end_nib  rotated terminalangle infinity of paths[p])(10)
)(paths[p])(strokes[p]);
anchor( "right",  point 7 of paths[p]) ;
endglyph;
