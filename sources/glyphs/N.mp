input glyph;
beginglyph;
z0= (thick/2, X);
z1=( x0, 0);

paths[p] = z0--z1 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

strokes[p] := top_left_straight_serif(strokes[p], 0);
strokes[p] := bottom_serif(strokes[p], 3);

p:=p+1;
z3 = (x0+thin/2, X );
z4 = (x3 + 0.66*X, thick*1.25/2);
paths[p] = z3--z4;
pen_stroke(
    cut(thick_nib rotated 45, 5)(0)
    cut(thick_nib rotated 45, 80)(1)
)(paths[1])(strokes[1]);


p:=p+1;
z6 = ((xpart point 1 of strokes[1])+ thin/2, ypart point 1 of strokes[1]);
z7 = (x6, X);
paths[p] = z7--z6;
pen_stroke(
    cut(thin_vertical_nib, 0)(0)
    nib(thin_vertical_nib)(1)
)(paths[2])(strokes[2]);

% Serifs


strokes[2] := top_serif(strokes[2], 0);

lbearing:=sw/3*0.25;
rbearing:=sw/3*0.25;

anchor( "top", (xpart(point 0.5 of paths[1]), 1.2X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;
