input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, thick*0.5/2);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, y0-thick*0.5/2);
z6 = (x5 + mw/2, y1);
z7 = (x6 - mw/4, y2);
z8 = (x7 - mw/4, (y7+ y9)/2);
z9 = (x8 + mw/2, y5 - m/4);
z10 = (x9 + mw/2.5, (y9 + y11)/2);
z11 = (x10 - mw/4, (y10 + y12)/2);
z12 = (x11 + mw/3, (y11+y13)/2);
z13 = (x6, -m/6);
z14 = (x0, y13);
z15 = (x1, (y14+y16)/2);
z16 = (x14, -descent);
z17 = (x10+thick/2, y16);
paths[p] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6.. z7..z8..{right}z9..z10..{left}z11{right}..z12..z13---z14..z15..z16---z17;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib)(3,4, 6, 10)
    nib(top_nib)(5)
    nib(down_nib)(7)
    nib(middle_up_nib)(8)
    nib(top_nib)(9)
    nib(end_nib rotated 90)(11)
    nib(middle_down_nib scaled 0.9)(10, 12)
    nib(down_nib)(13,14)
    nib(down_nib rotated 90)(15)
    nib(thick_horizontal_nib)(16,17)
)(paths[p])(strokes[p]);
rbearing:=rbearing - thick;
endglyph;
