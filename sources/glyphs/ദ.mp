input glyph;
beginglyph;

paths[0] =da;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated -45)(6)
)(paths[0])(strokes[0]);

endglyph;
