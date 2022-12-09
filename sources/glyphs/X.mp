input glyph;
beginglyph;
p:=0;
r := 0.8;
z0=(0, X);
z1=(x0 + r*Xw, 0);

paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib scaled (1+sind(45)/2))(0)
    nib(thick_vertical_nib scaled (1+sind(45)/2))(1)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0 + r*Xw, X);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_vertical_nib scaled (1+sind(45)/2))(0)
    nib(thin_vertical_nib scaled (1+sind(45)/2))(1)
)(paths[p])(strokes[p]);

p:=p+1;
strokes[p]:=paths[p] := serif_top_left slanted -0.55 shifted (xpart(point 0 of paths[0]), X);
p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted  (xpart(point 0 of paths[0]), X);

p:=p+1;
strokes[p]:=paths[p] := serif_top_left  shifted  (xpart(point 1 of paths[1]), X);
p:=p+1;
strokes[p]:=paths[p] := serif_top_right xscaled 0.8 slanted 0.7 shifted  (xpart(point 1 of paths[1]), X);

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted (xpart(point 1 of paths[0]), 0);
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right slanted -0.7 shifted (xpart(point 1 of paths[0]), 0);

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left xscaled 0.8 slanted 0.7 shifted (xpart(point 0 of paths[1]),0 );
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted (xpart(point 0 of paths[1]),0 );

endglyph;
