input glyph;
beginglyph;
z0=(x1 + 0.3mw, 0);
z1=(0, y0 + 0.5m);
z2=(x1 + mw/2, y1 + m/2);
z3=(x2 + mw/2, y1);
z4=(x3 - mw/3, thick*0.5/2);
z5=(x4 - mw/4, y4 + m/3);
z6= (x5 + mw/4, (y5+y7)/2);
z7= (x6 + mw/5, y2);
z8= (x2, ascent);
z9= (x8 - mw/4, 1.2m);
paths[0] = z0..z1..z2{right}..z3..z4..z5..z6..z7..z8..z9;
paths[0] := paths[0] ;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_up_nib rotated -30)(6)
    nib(middle_down_nib)(7)
    nib(top_nib)(8)
    nib(end_nib)(9)
)(paths[0])(strokes[0]);

endglyph;
