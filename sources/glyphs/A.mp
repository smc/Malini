input glyph;
beginglyph;

% Left slant
z0= (0, 0);
z1= (x0 + 0.36Xw, X);
z2=(x1 + 0.36Xw, y0);
paths[0] = z0--z1--z2;

clearxy;
z0 = point 0.4 of paths[0] ;
z1 = point 1.6 of paths[0] ;

paths[1]:= z0..z1 ;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);

pen_stroke(
    nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);

anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
endglyph;
