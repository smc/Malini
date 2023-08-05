input glyph;
beginglyph;


z0=(thick/2, X+serif_height);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0= point 0.66 of paths[p-1] + (0.75thin, 0);
z1= ( x0 + 2/3*sw, s);

paths[p] = z0--z1;
pen_stroke(
  cut(thin_nib rotated terminalangle 0 of paths[p], rel 145)(0)
  cut(thin_nib rotated terminalangle 0 of paths[p], 0)(1)
)(paths[p])(strokes[p]);


p:=p+1;
z2 = point 0.6 of paths[p-2] + (0.75thick, 0);
z3 = (x1, 0);

paths[p] = z2--z3;

pen_stroke(
  cut(thick_vertical_nib rotated terminalangle 0 of paths[p], rel 75)(0)
  cut(thick_vertical_nib rotated terminalangle 1 of paths[p], rel 45)(1)
)(paths[p])(strokes[p]);


% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);

p:=p+1;
paths[p] := serif_top_thin shifted (point 1 of paths[1] - (thick/2, 0));
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 0.75 of strokes[1]{dir 30}..{right}(subpath (1,4) of strokes[p]){right}..{dir -150}point 2.25 of strokes[1]--cycle;


p:=p+1;
paths[p] := serif_bottom_thick shifted (point 1 of paths[2] - (3/4thin, 0));
strokes[p] := serif_stroke_bottom(paths[p]);
strokes[p]:= point 0.8 of strokes[2]..{left}(subpath (1,4) of strokes[p]){left}..point 2.2 of strokes[2]--cycle;


lbearing:=serif_width/2;

endglyph;
