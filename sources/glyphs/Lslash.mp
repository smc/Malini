input glyph;
beginglyph;
z0=(thick/2, X);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z3=(xpart(point 0 of paths[p-1]), thin*1.2/2);
z4=(x3 + Xw/1.5, y3);

paths[p] = z3--z4;
pen_stroke(
   nib(thin_nib scaled 1.2 rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs
strokes[0] := top_serif(strokes[0], 0);
strokes[0] := bottom_left_serif(strokes[0], 3);

% Bottom bar serif
strokes[p] := subpath(0, 1) of strokes[p]{right}
   -- (xpart point 1 of strokes[p]+0.01Xw, X-s)
   -- (xpart point 1 of strokes[p] - serif_height, X-s){down}
  .. {left}subpath(2.3, length(strokes[p])-1) of strokes[p]
  -- cycle;


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
