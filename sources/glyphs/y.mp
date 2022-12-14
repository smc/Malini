input glyph;
beginglyph;
p:=0;
z0=(0, s - 0.05s);
z1=(x0 + sw/2.5, s/8);

paths[p] = z0--z1 ;
pen_stroke(
  nib(thick_vertical_nib rotated terminalangle 0 of paths[p])(0)
  nib(thick_vertical_nib rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = (0,-descent);
z1 = (x0+sw/6, y0+s/16);
z2=point infinity of paths[p-1] + (0.025sw, 0);
z3=(x2+sw/3, s);
paths[p] = z0{dir 0} .. z1 -- z3;

pen_stroke(
     nib(thicknib)(0)
     nib(thinnib)(1)
     nib(thin_vertical_nib)(2,3)
)(paths[p])(strokes[p]);

p:=p+1;
strokes[p]:=paths[p] := serif_top_left slanted -0.55 shifted (xpart(point 0 of paths[0]), s);
p:=p+1;
strokes[p]:=paths[p] := serif_top_right shifted  (xpart(point 0 of paths[0]), s);

p:=p+1;
strokes[p]:=paths[p] := serif_top_left  shifted  (xpart(point infinity of paths[1]), s);
p:=p+1;
strokes[p]:=paths[p] := serif_top_right xscaled 0.8 slanted 0.7 shifted  (xpart(point infinity of paths[1]), s);


endglyph;
