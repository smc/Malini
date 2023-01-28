input glyph;
beginglyph;


paths[0] := left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib scaled 0.6)(0)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(thick_vertical_nib)(6,7,8)
)(paths[0])(strokes[0]);


paths[1] = right_arch_with_eye shifted (point infinity of paths[0]);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
)(paths[1])(strokes[1]);

endglyph;
