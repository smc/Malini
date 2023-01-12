input glyph;
beginglyph;


p:=0;
z0=(thick/2, 1.05X);
z1=(x0, serif_height/4);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0= point 0.66 of paths[p-1] + (0.75thin, 0);
z1= ( x0 + 2/3*sw, s-thin/2);

paths[p] = z0--z1;
pen_stroke(
  cut(thin_nib rotated terminalangle 0 of paths[p], rel 145)(0)
  cut(thin_nib rotated terminalangle 0 of paths[p], rel 145)(1)
)(paths[p])(strokes[p]);


p:=p+1;
z2 = point 0.6 of paths[p-2] + (0.75thick, 0);
z3 = (x1, thick/4);

paths[p] = z2--z3;

pen_stroke(
  cut(thick_vertical_nib rotated terminalangle 0 of paths[p], rel 75)(0)
  cut(thick_vertical_nib rotated terminalangle 1 of paths[p], rel 45)(1)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (xpart point infinity of paths[1] - 1.thin, s);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[2] \- thick/2, 0);
strokes[p] := serif_stroke(paths[p]);

lbearing:=serif_width/2;

endglyph;
