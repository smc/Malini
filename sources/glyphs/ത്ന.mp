input glyph;
beginglyph;
paths[0] = left_tha_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(thin_vertical_nib)(7)
    nib(thin_vertical_nib)(8)
)(paths[0])(strokes[0]);

paths[1] = right_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 135)(4)
)(paths[1])(strokes[1]);

anchor( "vc", (xpart(point 4 of paths[0]),0));
anchor( "bottom", point 3.3 of paths[1]);
anchor( "right", point 3.3 of paths[1]);
endglyph;
