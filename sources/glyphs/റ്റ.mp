input glyph;
beginglyph;
paths[0] := ra;
paths[1] = ra shifted (0.1mw, -m ) xscaled 0.8 yscaled 0.8;

pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[0])(strokes[0]);

pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[1])(strokes[1]);
anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "right", (point 4 of paths[1]));
endglyph;
