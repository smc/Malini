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

paths[1]:=right_da shifted (xpart(point infinity of paths[0]), 0) ;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated -45)(6)
)(paths[1])(strokes[1]);

anchor( "vc", point 4 of paths[0]);
anchor( "bottom", point 5.5 of paths[1]);
anchor( "right", point 5.5 of paths[1]);


endglyph;
