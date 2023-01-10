input glyph;
beginglyph;
p:=0;
z0=(0, X);
z1=(x0, X/2);
z2=(x1, serif_height/4);
z3=(x0 + 0.6X, X);

paths[p] = z0--z2;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);

p:=p+1;

z5=(x3, serif_height/4);
paths[p] = z3--z5;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);

p:=p+1;
z6 = point 0.5 of paths[0];
z7 = point 0.5 of paths[1];
paths[p]:= z6..z7;
pen_stroke(
     nib(end_nib rotated 90)(0,1)
)(paths[2])(strokes[2]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[1]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[1], 0);
strokes[p] := serif_stroke(paths[p]);

anchor( "top", (xpart(point 0.5 of paths[2]), 1.2X));
endglyph;
