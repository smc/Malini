input glyph;
beginglyph;

p:=0;
z0=(thick/2, X-thick/4);
z1=(x0,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z3=(xpart(point 0 of paths[p-1]), thin*1.2/2);
z4=(x3 + Xw/2, y3);

paths[p] = z3--z4;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
path serif_stroke;
serif_stroke := serif_stroke_bottom(paths[p]);
strokes[1] := subpath(0, 2) of serif_stroke -- subpath(1, 3) of strokes[1] -- cycle;


p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[1]), 0);
z1=(x0 + 0.05sw, y0  + 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 4.25 of strokes[1];
paths[p] :=z0--z1--z2{dir -105}..{dir 200}z3--cycle;
strokes[p] := paths[p];

% Slash
clearxy;
p:=p+1;
z0=(-serif_width*0.5, ypart(point 0.5 of paths[0]));
z1=(x0+sw/2, y0 +s/4);
paths[p]=z0--z1;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);
lbearing:=serif_width-lbearing;
endglyph;
