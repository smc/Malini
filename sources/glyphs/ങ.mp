input glyph;
beginglyph;

clearxy;

input ./glyphs/include/left_arch_with_eye;

clearxy;
p:=p+1;
paths[p]:=right_da shifted (xpart(point infinity of paths[p-1]), 0) ;

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated 60)(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 5 of paths[0]);

anchor( "right", point 5.6 of paths[1]);

endglyph;
