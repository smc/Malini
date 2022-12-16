input glyph;
beginglyph;
z0= (X/3, X);
z1=( x0, y0 - 0.5X);
z2=( x1, y1 - 0.5X);
z3 = (0, y0-thin/2);
z4 = (x3 + X/3, y3);
z5 = (x0, y1);
z6 = (x5 + 0.8w, y5);
z7 = (0, y2+thin/2);
z8 = (x7 + X/3, y7);

paths[0] = z0--z1--z2 ;
pen_stroke(
    nib(thick_nib)(0, 1,2)
)(paths[0])(strokes[0]);



paths[1] = z3--z4;
pen_stroke(
    nib(thin_nib rotated 90)(0, 1)
)(paths[1])(strokes[1]);

paths[2] = z7--z8;
pen_stroke(
    nib(thin_nib rotated 90)(0, 1)
)(paths[2])(strokes[2]);
endglyph;
