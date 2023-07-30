input glyph;
beginglyph;

input ./glyphs/include/റ;
paths[0] := paths[0] shifted(mw/4, 0);
paths[0] := (0, thick/4) -- paths[0] -- (xpart(point 4 of paths[0]) + mw/2, thick/4);
pen_stroke(
    nib(top_nib)(0, 1,5,6)
    nib(top_nib)(3)
    nib(middle_up_nib)(2)
    nib(middle_down_nib)(4)
)(paths[0])(strokes[0]);

endglyph;
