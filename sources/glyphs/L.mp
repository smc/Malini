input glyph;
beginglyph;

p:=0;
z0=(thick/2, X);
z1=(x0,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z3=(xpart(point 0 of paths[p-1]), thick*sind(50)/2);
z4=(x3 + Xw/2, y3);

paths[p] = z3--z4;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 1 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_hanging_top_left rotated -180 shifted( point 1 of paths[1] + (0, thick/8));


anchor( "top", (xpart(point 0 of paths[0]), X));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;
