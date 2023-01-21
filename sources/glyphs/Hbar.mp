input glyph;
beginglyph;
p:=0;
z0=(0, X-thick/4);
z1=(x0, X/2);
z2=(x1, thick/4);
z3=(x0 + 0.6X, X);

paths[p] = z0--z2;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);

p:=p+1;

z5=(x3, thick/4);
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

% Bar
clearxy;
z0 = point 0.25 of paths[0] - (sw/4, 0);
z1 = point 0.25 of paths[1] + (sw/4, 0);
paths[3]:= z0..z1;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[3])(0)
    nib(end_nib rotated terminalangle infinity of paths[3])(infinity)
)(paths[3])(strokes[3]);
endglyph;
