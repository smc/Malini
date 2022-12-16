input glyph;
beginglyph;

paths[0] := left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(thick_vertical_nib)(6,7,8)
)(paths[0])(strokes[0]);


paths[1] = right_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[1])(4)
)(paths[1])(strokes[1]);

endglyph;
