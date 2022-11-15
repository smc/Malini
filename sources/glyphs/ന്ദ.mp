input glyph;
beginglyph;
paths[0] = left_arch;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[0])(strokes[0]);

paths[1] = subpath(1, 6) of da shifted (xpart(point infinity of paths[0]), 0) ;
pen_stroke(
    nib(thicknib)( 3, 6)
    nib(thinnib)(0, 2,4,6)
    nib(thinterminalnib rotated terminalangle 0 of paths[1])(0)
    nib(thinterminalnib rotated terminalangle 3 of paths[1])(3)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);

anchor( "vc", point 4 of paths[0]);
anchor( "bottom", point 4.25 of paths[1]);
anchor( "right", point 4.25 of paths[1]);


endglyph;
