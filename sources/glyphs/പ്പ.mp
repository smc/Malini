input glyph;
beginglyph;

input ./glyphs/include/പ;


paths[3] := paths[0] shifted (0.33mw, -0.75m) xscaled 0.8 yscaled 0.75;
paths[4] := paths[1] shifted (0.33mw, -0.75m+thin/4) xscaled 0.8 yscaled 0.75;
paths[5] := paths[2] shifted (0.333mw, -0.75m) xscaled 0.8 yscaled 0.75;

strokes[3] := va_mouth_stroke(paths[3]);
pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[4])(strokes[4]);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[5])(strokes[5]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", point 1 of paths[4]);
anchor( "right", point 1 of paths[4] - (mw/5, 0));

endglyph;
