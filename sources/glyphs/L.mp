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
z3=(xpart(point 0 of paths[p-1]), thin*1.2/2);
z4=(x3 + Xw/2, y3);

paths[p] = z3--z4;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[1]), 0);
z1=(x0 + 0.05sw, y0  + 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 2.25 of strokes[1];
paths[p] :=z0--z1--z2{dir -105}..{dir 200}z3--cycle;
strokes[p] := paths[p];

anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;
