input glyph;
beginglyph;
z0= (thick/2, X-serif_height/2 );
z1= (x0, 0);

paths[p] = z0--z1 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
)(paths[p])(strokes[p]);
strokes[0] := bottom_serif(strokes[0], 1);


p:=p+1;
clearxy;
z0 = (xpart point 0 of paths[0]+thin/2, X );
z1 = (x0 + Xw/2.25, thick*sind(45)/2);
paths[1] = z0--z1;

pen_stroke(
    cut(thick_nib rotated 45, 0)(0)
    cut(thick_nib rotated 45, 45)(1)
)(paths[p])(strokes[p]);
strokes[p] := top_left_straight_serif_MN(strokes[p], 0);

% /
p:=p+1;
clearxy;
z0 = (xpart point 3 of strokes[1]+thin*1.25*0.5, ypart point 3 of strokes[1]);
z1 = (xpart point 3 of strokes[1] + Xw/2.5, X);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_nib scaled 1.25)(0)
    cut(thin_nib scaled 1.25, 0)(1)
)(paths[p])(strokes[p]);

strokes[p] := top_right_straight_serif_MN(strokes[p], 1);

p:=p+1;
clearxy;
z0 = (xpart point 1 of paths[2] + thin/2, X-serif_height/2);
z1 = (x0, 0);
paths[3] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);
strokes[3] := bottom_serif(strokes[3], 1);

lbearing:=sw/3*0.25;
rbearing:=sw/3*0.25;

endglyph;
