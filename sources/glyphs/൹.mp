input glyph;
beginglyph;
p:=0;
paths[p] = left_arch ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := subpath(0, 5) of right_arch_with_eye shifted (xpart(point infinity of paths[p-1]), 0);
z0 = (point infinity of paths[p]) + (mw/2, m/4);
z1 = (x0 + mw/2, y0);
paths[p] := paths[p]{up}..z0---z1;
pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(top_nib)(7)
)(paths[p])(strokes[p]);
endglyph;
