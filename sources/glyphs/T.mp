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
z0 = (0, ypart(point 0 of paths[0])-thick*sind(45)/2) ;
z1 = (xpart(point 0 of paths[0]) + Xw/2.25, y0) ;
paths[p] = z0--z1;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 1 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 1 of paths[0];

p:=p+1;
strokes[p]:=paths[p] := serif_hanging_top_left shifted (xpart(point 0 of paths[1]), X);
p:=p+1;
strokes[p]:=paths[p] := serif_hanging_top_right shifted (xpart(point 1 of paths[1]), X);


anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;
