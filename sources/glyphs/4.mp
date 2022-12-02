input glyph;
beginglyph;
z0=(x1 + mw/2, X);
z1=(0, X/4);
z2=(x1+.75Xw, y1);
z3=((x1+x2)/1.5, (y0+y1)/1.5);
z4=(x3, 0);

paths[0] = z0--z1;
paths[1] = z1--z2 ;
paths[2] = z3--z4 ;

pen_stroke(
   nib(top_nib rotated 45)(0,1)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(top_nib rotated 45)(0,1)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(middle_down_nib)(0,1)
)(paths[2])(strokes[2]);
endglyph;