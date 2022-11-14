input glyph;
beginglyph;
paths[0] = pa_mouth;
z5=point infinity of paths[0];
z6=(x5 + 0.75mw, y5);


paths[1] := z5{dir 20}..{dir 20}z6 && ra shifted (xpart(z6) - mw/4, -thick/4);
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thinnib rotated 0 )(2,4,6)
    nib(terminalnib rotated terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated (terminalangle infinity of paths[1]))(infinity)
)(paths[1])(strokes[1]);
anchor( "vc", point 0.5 of paths[1]);
anchor( "bottom", point infinity of paths[1]);
anchor( "right", point infinity of paths[1]);
endglyph;
