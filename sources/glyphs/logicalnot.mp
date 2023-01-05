input glyph;
beginglyph;
z0 = (0, 0.6s);
z1 = (0.75sw, y0);

paths[0] = z0--z1;
pen_stroke(
    nib(thick_horizontal_nib)(0)
    nib(thick_horizontal_nib)(1)
)(paths[0])(strokes[0]);
clearxy;
z0 = point infinity of paths[0] - (thick/2,0);
z1 = (x0, y0- s/3);
paths[1] =z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(infinity)
)(paths[1])(strokes[1]);
endglyph;
