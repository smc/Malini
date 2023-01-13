input glyph;
beginglyph;
p:=0;
save w;
z0=(0, X);
z1=(x0 + Xw/3, 0.4X);
z2=(x1, 0);

z3=(x0 + 2Xw/3, X);
z4=(x1, y1);

paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = z3--z4;
pen_stroke(
  nib(thin_vertical_nib scaled 1.25)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = z1+(0, thick/2)--z2;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point 0 of paths[1] - (3/4thin, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[2]);
strokes[p] := serif_stroke(paths[p]);
p:=p+1;
paths[p] = (0.1s, 0.6s)--(xpart(point 0 of paths[1])*0.9, 0.6s);
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[p])(0)
    nib(thin_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = (0.1s, s/3)--(xpart(point 0 of paths[1])*0.9, s/3);

pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[p])(0)
    nib(thin_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);
endglyph;
