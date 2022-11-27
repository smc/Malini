input glyph;
beginglyph;
p=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, thick*0.5/2);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, y0-thick*0.5/2);
z6 = (x5 + mw/2, y1);
z7 = (x6 - mw/4, y2);
z8 = (x7 - mw/4, y6);
z9 = (x8 + mw/2, y5 - m/4);
z10 = (x9 + mw/2, (y9+y11)/2);
z11 = (x6, -m/6);
z12 = (x0, y11);
z13 = (x1, (y12+y14)/2);
z14 = (x12, -descent);
z15 = (x10+thick, y14);
paths[p] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6.. z7..{dir 60}z8..z9..z10{down}..z11---z12..z13..z14---z15;

pen_stroke(
    nib(top_nib)(0)
    nib(middle_up_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib)(3,6, 10)
    nib(top_nib)(5)
    nib(down_nib)(7)
    nib(middle_up_nib)(8)
    nib(top_nib)(9)
    nib(down_nib)(11,12)
    nib(middle_up_nib)(13)
    nib(thick_vertical_nib rotated 90)(14,15)
)(paths[p])(strokes[p]);
rbearing:=rbearing - thick;
endglyph;
