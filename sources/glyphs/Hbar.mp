input glyph;
beginglyph;

z0=(0, X);
z1=(x0, X/2);
z2=(x1, 0);
z3=(x0 + 0.6X, X);

paths[p] = z0--z2;
pen_stroke(
  nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;

z5=(x3, 0);
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
strokes[0] := top_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 1+2);

strokes[1] := top_serif(strokes[1], 0);
strokes[1] := bottom_serif(strokes[1], 1+2);

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
