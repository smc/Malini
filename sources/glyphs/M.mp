input glyph;
beginglyph;
z0= (thick/2, X );
z1= (x0, 0);

paths[p] = z0--z1 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

strokes[p] := top_left_straight_serif(strokes[p], 0);

p:=p+1;
z3 = (x0+thin/2 , X );
z4 = (x3 + Xw/2.25, thick*sind(45)/2);
paths[1] = z3--z4;

pen_stroke(
    cut(thick_nib rotated 45, 5)(0)
    cut(thick_nib rotated 45, 45)(1)
)(paths[1])(strokes[1]);

% /
p:=p+1;
z5 = (xpart point 1 of strokes[1]+thin*1.25*0.5, ypart point 1 of strokes[1]);
z6 = (x4 + Xw/2.5, X);

paths[2] = z5--z6;
pen_stroke(
    nib(thin_nib scaled 1.25)(0)
    cut(thin_nib scaled 1.25, -5)(1)
)(paths[2])(strokes[2]);

p:=p+1;

z7 = (x6+thin/2, X);
z8 = (x7, y1);
paths[3] = z7--z8;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[3])(strokes[3]);

% Serifs
strokes[0] := bottom_serif(strokes[0], 3);
strokes[3] := top_right_straight_serif(strokes[3], 3);
strokes[3] := bottom_serif(strokes[3], 2);

lbearing:=sw/3*0.25;
rbearing:=sw/3*0.25;

endglyph;
