input glyph;
beginglyph;

z0=(0, s - thick/3);
z1=(x0 + .8sw, y0);
z2=((x1-x0)/2, s/2);
z3=(x0,  thick/4);
z4=(x1, y3);

paths[0] = z0--z1;
pen_stroke(
  nib(top_nib)(0,1,2)
)(paths[0])(strokes[0]);
clearxy;
z0=(0.72sw,  s-thick/3);
z1=(0.1sw, thick/3);
paths[1] = z0--z1 ;
pen_stroke(
 nib(thick_vertical_nib rotated terminalangle 1 of paths[1])(0)
 nib(thick_vertical_nib rotated terminalangle 1 of paths[1])(1)
)(paths[1])(strokes[1]);
clearxy;
z0=(0,  thick/3);
z1=(x0+ 0.8sw, y0);
paths[2] = z0--z1 ;
pen_stroke(
    nib(down_nib)(0,1)
)(paths[2])(strokes[2]);

strokes[3]:=paths[3] := serif_hanging_top_left shifted (xpart(point 0 of paths[0]), s-thick/2);
strokes[4]:=paths[4] := serif_hanging_top_left rotated 180 shifted (xpart(point 1 of paths[2]), thick/2);


anchor( "top", (xpart(point 0.5 of paths[0]), X));
endglyph;
