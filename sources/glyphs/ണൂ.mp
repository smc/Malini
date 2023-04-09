input glyph;
beginglyph;
input ./glyphs/include/ണ;

paths[p] := right_arch_with_tail shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(middle_down_nib)(7)
    nib(end_nib rotated terminalangle 8 of paths[p])(8)
)(paths[p])(strokes[p]);

endglyph;
