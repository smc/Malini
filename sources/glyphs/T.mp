input glyph;
beginglyph;
p:=0;
z0=(Xw/2.25, X);
z1=(x0, 0);

paths[0] = z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = (0, ypart(point 0 of paths[0]) - thin/2) ;
z1 = (xpart(point 0 of paths[0]) + Xw/2.25, y0) ;
paths[p] = z0--z1;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

clearxy;
p:=p+1;
clearxy;
z0=(xpart(point 0 of paths[1]), X);
z1=(x0 - 0.05sw, y0  - 1.5serif_width);
z2=(x1 + serif_height, y1);
z3=point 0.2 of strokes[1];
paths[p] :=z0--z1--z2{dir 60}..{dir 20}z3--cycle;
strokes[p] := paths[p];

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[1]), X);
z1=(x0 + 0.05sw, y0  - 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 4.8 of strokes[1];
paths[p] :=z0--z1--z2{dir 105}..{dir 160}z3--cycle;
strokes[p] := reverse paths[p];



anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;
