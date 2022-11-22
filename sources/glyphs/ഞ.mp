input glyph;
beginglyph;

paths[0] := left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(thin_vertical_nib)(7,8)
)(paths[0])(strokes[0]);

paths[1] := right_tha_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib)(8)
)(paths[1])(strokes[1]);

anchor( "right", point infinity of paths[1]);
anchor( "bottom", point infinity of paths[1]);

endglyph;