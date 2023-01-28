input glyph;
beginglyph;

paths[0] :=left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(thick_vertical_nib)(6,7,8)
)(paths[0])(strokes[0]);

% Second arch

paths[1] = middle_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[1])(strokes[1]);

paths[2] = right_arch shifted (xpart(point infinity of paths[1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[2])(strokes[2]);

z0=(0, m/2);
z1=(x0 + 0.4mw, y0 + m/2);
z2=(x1 + 0.4mw, y1 - m/2);
z3=(x2 - 0.4mw, y2 - m/2);
z4=z0;

paths[3] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4;
paths[3] := paths[3] shifted(xpart(point 2 of paths[2]), -m) xscaled 0.8 yscaled 0.7;

pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[3])(strokes[3]);

anchor( "vc", (xpart(point 1 of paths[1]),0));
anchor( "bottom", point 2.25 of paths[3]);
anchor( "right", point 2.25 of paths[3]);

endglyph;
