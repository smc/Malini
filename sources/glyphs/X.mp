input glyph;
beginglyph;
w := 0.6X;
z0=(0, X);
z1=(x0 + w/2, y0 - 0.5X);
z2=(x1 + w/2, y1 - 0.5X);
z3=(0, 0);
z4=(x3 + w/2, y3 + 0.5X);
z5=(x4 + w/2, y4 + 0.5X);

paths[0] = z0..z1--z2;
paths[1] = z3--z4--z5;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);
endglyph;
