input glyph;
beginglyph;
input ./glyphs/include/left_arch_with_eye;

p:=p+1;
paths[p] := right_tha_arch shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib rotated -45)(8)
)(paths[p])(strokes[p]);

anchor( "right", point infinity of paths[p]);

endglyph;