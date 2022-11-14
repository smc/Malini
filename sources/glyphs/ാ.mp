input glyph;
beginglyph;

z0=(0, 3/4m);
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, (y1+y3)/2);
z3=(x1, 0);
z4=(x0, m/4);
paths[0] = z0..z1..z2..z3..z4;

pen_stroke(
    nib(middle_up_nib)(0, 4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[0])(strokes[0]);
endglyph;
