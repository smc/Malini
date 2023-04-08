input glyph;
beginglyph;
input ./glyphs/include/ണ;

paths[2] := right_arch_with_eye shifted (xpart(point infinity of paths[1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
)(paths[2])(strokes[2]);

endglyph;
