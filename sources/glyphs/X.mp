input glyph;
beginglyph;
p:=0;
r := 0.8;
z0=(0, X);
z1=(x0 + r*Xw, 0);

paths[p] = z0--z1;
pen_stroke(
    cut(thick_vertical_nib rotated terminalangle 0 of paths[p], 0)(0)
    cut(thick_vertical_nib rotated terminalangle 1 of paths[p], 0)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0 + r*Xw, X);
paths[p] = z0--z1;
pen_stroke(
    cut(thin_vertical_nib rotated terminalangle 0 of paths[p], 0)(0)
    cut(thin_vertical_nib rotated terminalangle 1 of paths[p], 0)(1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.9 of strokes[0]{dir 130}..{right}(subpath (1,4) of strokes[p]){right}..{dir -50}point 0.15 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_top_thin shifted (point 1 of paths[1] - (thick/2, 0));
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 0.9 of strokes[1]{dir 50}..{right}(subpath (1,4) of strokes[p]){right}..{dir -130}point 2.15 of strokes[1]--cycle;

p:=p+1;
paths[p] := serif_bottom_thick shifted (point 1 of paths[0] - (3/4thin, 0));
strokes[p] := serif_stroke_bottom(paths[p]);
strokes[p]:= point 0.9 of strokes[0]{dir -50}..{left}(subpath (1,4) of strokes[p]){left}..{dir 130}point 2.15 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_bottom_thin shifted (point 0 of paths[1] + (thin, 0));
strokes[p] := serif_stroke_bottom_thin(paths[p]);
strokes[p]:= point 2.9 of strokes[1]{dir -130}..{left}(subpath (1,4) of strokes[p]){left}..{dir 50}point 0.15 of strokes[1]--cycle;

endglyph;
