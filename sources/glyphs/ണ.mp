input glyph;
beginglyph;

paths[0] :=left_arch_with_eye;
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

% Second arch

paths[1] = middle_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[1])(strokes[1]);

paths[2] = right_arch shifted (xpart(point infinity of paths[1]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[2])(strokes[2]);
endglyph;
