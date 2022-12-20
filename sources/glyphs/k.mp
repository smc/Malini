input glyph;
beginglyph;


p:=0;
z0=(thick/2, 1.05X);
z1=(x0,  0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0= point 0.66 of paths[p-1] + (0.75thin, 0);
z1= ( x0 + 2/3*sw, s);

paths[p] = z0--z1;
pen_stroke(
  nib(thin_nib scaled 1.5)(0,1)
)(paths[p])(strokes[p]);


p:=p+1;
z2 = point 0.6 of paths[p-2] + (0.75thick, 0);
z3 = (x1, thick/3);

paths[p] = z2--z3;

pen_stroke(
  nib(thick_vertical_nib rotated terminalangle 0 of paths[p])(0)
  nib(thick_vertical_nib rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point infinity of paths[1] - (1.5thin, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[2] - thick/4 , 0);
strokes[p] := serif_stroke(paths[p]);

lbearing:=2lbearing;

endglyph;
