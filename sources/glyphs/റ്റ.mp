input glyph;
beginglyph;
paths[0] := ra;
paths[1] = ra shifted (0.15mw, -m ) xscaled 0.75 yscaled 0.75;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib  rotated -45)(4)
)(paths[0])(strokes[0]);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(end_nib  rotated -45)(4)
)(paths[1])(strokes[1]);
anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "right", (point 4 of paths[1]));
endglyph;
