input glyph;
beginglyph;
paths[p] := tha;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    cut(end_nib  rotated -45, rel 90)(8)
)(paths[p])(strokes[p]);


anchor( "vc", point 4 of paths[p]);
anchor( "bottom", (xpart(point 7.5 of paths[p]), 0));
endglyph;
