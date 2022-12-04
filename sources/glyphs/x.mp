input glyph;
beginglyph;
r := 0.8;
z0=(0, s);
z1=(x0 + r*sw/2, y0 - s/2);
z2=(x1 + r*sw/2, y1 - s/2);
z3=(0, 0);
z4=(x3 + r*sw/2, y3 + s/2);
z5=(x4 + r*sw/2, y4 + s/2);
paths[0] = z0..z1--z2;
paths[1] = z3--z4--z5;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);
endglyph;
