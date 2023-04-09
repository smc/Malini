input glyph;
beginglyph;
input ./glyphs/include/left_arch_with_eye;

clearxy;
p:=p+1;
paths[p] = right_arch shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[1])(4)
)(paths[p])(strokes[p]);

endglyph;
