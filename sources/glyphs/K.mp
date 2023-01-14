input glyph;
beginglyph;
p:=0;
z0=(thick/2, X-thick/4);
z1=(x0,  0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0= (xpart(point 1 of paths[0]), X/3);
z1= ( x0 + 0.6Xw, X-thick/4);

paths[p] = z0--z1;
pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
z2 = point .3 of paths[p-1];
z3 = (x1 + thick/2, 0);

paths[p] = z2--z3;


pen_stroke(
  nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (xpart point infinity of paths[1] - 0.5thick, X);
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[2] - (0.75thick,0));
strokes[p] := serif_stroke_bottom(paths[p]);

endglyph;
