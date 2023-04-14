input glyph;
beginglyph;
input ./glyphs/include/ഗ_;

p:=p+1;
paths[p] := right_arch_with_eye shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 4 of paths[p]);
anchor( "bottom", (xpart(point 6 of paths[p]),0));
endglyph;
