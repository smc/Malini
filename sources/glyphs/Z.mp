input glyph;
beginglyph;
p:=0;
z0=(0, X - thin/2);
z1=(x0 + .75Xw, y0);
z2=((x1-x0)/2, s/2);
z3=(x0,  thick/4);
z4=(x1, y3);

paths[p] = z0--z1;
pen_stroke(
  nib(thin_nib rotated 90)(0,1,2)
)(paths[0])(strokes[0]);

clearxy;
p:=p+1;
z0=(0.75Xw, X);
z1=(0, 0);
paths[1] = z0--z1 ;
pen_stroke(
 nib(thick_vertical_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(0,  thin/2);
z1=(x0+ 0.8Xw, y0);
paths[2] = z0--z1 ;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
clearxy;
z0=(xpart(point 0 of paths[0]), X);
z1=(x0 - 0.05sw, y0  - 1.5serif_width);
z2=(x1 + serif_height, y1);
z3=point 0.25 of strokes[0];
paths[p] :=z0--z1--z2{dir 60}..{dir 20}z3--cycle;
strokes[p] := paths[p];

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[2]), 0);
z1=(x0 + 0.05sw, y0  + 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 2.25 of strokes[2];
paths[p] :=z0--z1--z2{dir -105}..{dir 200}z3--cycle;
strokes[p] := paths[p];

anchor( "top", (xpart(point 0.5 of paths[0]), 1.2X));
endglyph;
