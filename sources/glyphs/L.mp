input glyph;
beginglyph;

p:=0;
z0=(0, 1.1X);
z1=(0, y0-2/3thick);
z2=(x0, y3+2/3thick);
z3=(x0,  0);
paths[p] := z0--z1--z2--z3;
pen_stroke(
    nib(end_nib scaled 3)(0)
    nib(thick_vertical_nib)(1,2)
    nib(end_nib scaled 3)(infinity)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z3=(xpart(point 0 of paths[p-1]), thick*sind(50)/2);
z4=(x3 + Xw/2, y3);

paths[p] = z3--z4;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);
anchor( "top", (xpart(point 0 of paths[0]), X));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;
