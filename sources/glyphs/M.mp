input glyph;
beginglyph;
z0= (thick/2, X);
z1=( x0, X/2);
z2=( x1, 0);
z3 = (x0, y0);
z4 = (x3 + 0.66X/2, 0.33X);
z5 = (x4, y4);
z6 = (x4 +  0.66X/2, y0);
z7 = (x6, y1);
z8 = (x7, y2);

paths[0] = z0--z2 ;
paths[1] = z3--z4;
paths[2] = z5--z6;
paths[3] = z6--z8;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[2])(strokes[2]);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[3])(strokes[3]);

endglyph;
