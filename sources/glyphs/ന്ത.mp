input glyph;
beginglyph;
input ./glyphs/include/left_arch;

p:=p+1;
clearxy;
paths[p] = right_tha_arch shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib rotated 135)(8)
)(paths[p])(strokes[p]);

anchor( "vc", point 0 of paths[1]);

endglyph;
