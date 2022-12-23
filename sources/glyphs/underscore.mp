input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
paths[0] = (0, 0)--(0.75sw, 0);
pen_stroke(
    nib(thick_horizontal_nib)(0)
    nib(thick_horizontal_nib)(infinity)
)(paths[0])(strokes[0]);

endglyph;
