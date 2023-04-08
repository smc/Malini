input glyph;
beginglyph;
input ./glyphs/include/ല;
paths[4] = la_sign;
pen_stroke(
    nib(middle_up_nib)(0,4, 9)
    nib(top_nib)(1,5)
    nib(middle_down_nib scaled 0.8)(2,6,7)
    nib(down_nib)(3,8)
    nib(end_nib rotated terminalangle 10 of paths[4])(10)
)(paths[4])(strokes[4]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "right", point 8.5 of paths[4]);

endglyph;