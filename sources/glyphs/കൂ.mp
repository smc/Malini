input glyph;
beginglyph;

z0=(mw/2, 0.5m);
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, y1 - m/2);
z3=(x2 - mw/3, y2 - m/2);
z4=(x3 - mw/3, y3 + 0.5m);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x5, y6 + 0.3m);
z8=(x2  + mw/6, y7);
z9=(x8 + mw/4, y8 - m/6);
z10=(x9 - mw/4, y9 - m/6);
z11=(x10 + mw/4, y10 - m/6);
z12=(x11 - mw/2.8, y11 - m/4);
z13=(x5, y12);
z14=(x6, (y13+y15)/2);
z15=(x13, -descent);
z16=(x11+thick, y15);
paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9..{left}z10{right}..z11..z12---z13..z14..z15---z16;
pen_stroke(
    nib(middle_up_nib)(0, 4)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(down_nib)(6)
    nib(middle_down_nib)(6, 9, 11)
    nib(thin_vertical_nib rotated 90)(7, 8)
    nib(thin_vertical_nib rotated 90)(10)
    nib(down_nib)(12)
    nib(down_nib)(13)
    nib(middle_up_nib)(14)
    nib(thick_vertical_nib rotated 90)(15,16)
)(paths[0])(strokes[0]);
rbearing:=rbearing - thick;
anchor( "vc", point 1 of paths[0]);

endglyph;
