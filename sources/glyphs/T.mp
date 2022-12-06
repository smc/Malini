input glyph;
beginglyph;
z0=(Xw/3, X );
z1=(x0, y0- .5X);
z2=(x1, y3+2/3thick);
z3=(x1, 0);

paths[0] = z0--z1--z2--z3;

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
    nib(end_nib scaled 3)(infinity)
)(paths[0])(strokes[0]);

clearxy;
z0 = (0, y1) ;
z1 = (xpart(point 0 of paths[0]) + Xw/3, ypart(point 0 of paths[0])) ;
paths[1] = z0--z1;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;
