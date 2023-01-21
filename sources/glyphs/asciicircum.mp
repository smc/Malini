input glyph;
beginglyph;
z0 = (thick/2, s/3);
z1 = (x0+ sw/3, s);
z2 = (x1 + sw/3, y0);
paths[0] = z0--z1--z2;
pen_stroke(
    nib(thick_nib )(0)
    nib(thick_nib )(1)
    nib(thick_nib)(2)
)(paths[0])(strokes[0]);

endglyph;
