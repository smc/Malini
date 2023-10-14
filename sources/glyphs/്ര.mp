input glyph;
beginglyph;

z0 = (x1 + mw/8, m);
z1 = ( 0, (y0+y2)/2);
z2 = ( x1 + mw/2 , -m/3);
paths[0] = z0..z1..{right}z2;
pen_stroke(
    cut(top_nib rotated 60, rel 90)(0)
    nib(middle_up_nib)(1)
    cut(thick_nib rotated 90, rel 90)(2)
    ignore_directions(1)
)(paths[0])(strokes[0]);

rbearing:=-4rbearing;

endglyph;
