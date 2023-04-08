input glyph;
beginglyph;
z0=(0, X-thick/4);
z1=(x0, X/2);
z2=(x1, thick/4);
z3=(x0 + 0.6X, X-thick/4);

paths[p] = z0--z2;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;

z5=(x3, thick/4);
paths[p] = z3--z5;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
z6 = point 0.5 of paths[0];
z7 = point 0.5 of paths[1];
paths[p]:= z6..z7;
pen_stroke(
     nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[1], X);
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[1], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

% Bar
clearxy;
p:=p+1;
z0 = point 0.25 of paths[0] - (sw/4, 0);
z1 = point 0.25 of paths[1] + (sw/4, 0);
paths[p]:= z0..z1;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);
endglyph;
