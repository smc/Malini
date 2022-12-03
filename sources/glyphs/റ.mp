input glyph;
beginglyph;
paths[0] = ra;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[0])(strokes[0]);

anchor( "right", point 4 of paths[0] );
endglyph;
