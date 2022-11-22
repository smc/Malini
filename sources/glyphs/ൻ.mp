input glyph;
beginglyph;
paths[0] = left_arch;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[0])(strokes[0]);

 clearxy;
z0=(thick*0.60/2, 0);
z1=(x0, m*0.6);
z2=((x1+x3)/2, 0.975m); % Top of arch
x3-x1 = 0.8*mw;
z3=(x3, m/2);
z4= (x3 - mw/4, thick*0.60/2);
z5= (x4 - mw/4, (y4+y6)/2);
z6= (x5 + mw/4, (y5+y7)/2);
z7= (x6 + mw/5, y2);
z8= (x2, ascent);
z9= (x8 - mw/4, 1.2m);

paths[1] := z0---z1..z2..z3..z4..z5..z6..z7..z8..z9;
paths[1] := paths[1] shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_up_nib rotated -30)(6)
    nib(middle_down_nib)(7)
    nib(top_nib)(8)
    nib(end_nib)(9)
)(paths[1])(strokes[1]);

endglyph;
