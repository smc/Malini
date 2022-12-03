input glyph;
beginglyph;
z0=(x1 + mw/4, m);
z1=(0, 0);
z2=(x1+.75Xw, y1);
z3=((x1+x2)/2, y1);
z4=(x3, -descent);

paths[0] = z0--z1;
paths[1] = z1--z2 ;
paths[2] = z3--z4 ;

pen_stroke(
     nib(thick_vertical_nib)(0,1)
)(paths[0])(strokes[0]);
pen_stroke(
     nib(thick_vertical_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[2])(strokes[2]);
endglyph;