input glyph;
beginglyph;
z0= (0, X);
z1=( x0, 0);
paths[p] = z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0, 1)
)(paths[p])(strokes[p]);

strokes[p] := top_serif(strokes[p], 0);
strokes[p] := bottom_serif(strokes[p], 3);

p:=p+1;
z3 = (x0, X - thin/2);
z4 = ((x3 + x5)/3, y3);
z5 = (x0 + 0.66Xw, (y4+y6)/2.04);
z6 = (x4,  y7);
z7 = (0, thin/2);

paths[p] = z3---z4..z5{down}..z6---z7 ;

pen_stroke(
    nib(thin_nib rotated 90)(0, 1, 3, 4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 1 of paths[1]), 1.2X));

endglyph;
