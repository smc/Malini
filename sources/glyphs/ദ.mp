input glyph;
beginglyph;
p:=0;
paths[p] =da;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated 60)(6)
)(paths[p])(strokes[p]);

anchor( "right", (xpart(point 5.5 of paths[0]),0));

endglyph;
