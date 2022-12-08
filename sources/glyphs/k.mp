input glyph;
beginglyph;


p:=0;
z0=(thick/2, X);
z1=(x0,  0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0= (xpart(point 0 of paths[p-1]), s/3);
z1= ( x0 + 0.66*sw, s);

paths[p] = z0--z1;
pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


p:=p+1;
z2 = point 0.3 of paths[p-1];
z3 = (x1 + thick/2, 0);

paths[p] = z2--z3;

pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 1 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 1 of paths[0];

endglyph;
