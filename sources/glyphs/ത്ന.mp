input glyph;
beginglyph;
input ./glyphs/include/ത_;

paths[1] = right_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 135)(4)
)(paths[1])(strokes[1]);

anchor( "vc", (xpart(point 4 of paths[0]),0));
anchor( "bottom", point 3.3 of paths[1]);
anchor( "right", point 3.3 of paths[1]);
endglyph;
