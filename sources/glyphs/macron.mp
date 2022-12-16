input glyph;
beginglyph;
paths[0] = (0, X)--(sw/2, X);

pen_stroke(
    nib(thick_horizontal_nib)(0, 1)
)(paths[0])(strokes[0]);
anchor( "top", (sw/4, X));
endglyph;
