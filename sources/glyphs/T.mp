input glyph;
beginglyph;
z0=(Xw/3, X - thick/4);
z1=(x0, y0- .5X);
z2=(x1, 0);
z3 = (0, y0-thick/4) ;
z4 = (x0 + Xw/3, y3) ;
paths[0] = z0--z1--z2;
paths[1] = z3--z4;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;
