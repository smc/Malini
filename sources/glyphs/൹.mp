input glyph;
beginglyph;

input ./glyphs/include/left_arch;

clearxy;
p:=p+1;
input ./glyphs/include/right_arch_with_eye;
paths[p] := subpath(0, 5) of paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
clearxy;
z0 = (point infinity of paths[p]) + (mw/2, m/4);
z1 = (x0 + mw/2, y0);
paths[p] := paths[p]{up}..z0---z1;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(top_nib)(7)
)(paths[p])(strokes[p]);
endglyph;
