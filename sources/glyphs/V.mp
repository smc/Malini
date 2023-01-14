input glyph;
beginglyph;
p:=0;
z0=(0, X);
z1=(x0 + Xw/2.5, thick*sind(45)/2);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 45)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]),0)  ;
z1=(x0+Xw/2.5, X);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.85 of strokes[0]..{right}(subpath (1,4) of strokes[p]){right}..point 0.15 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_top_thin shifted (point 1 of paths[1] - (thin/2, 0));
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 0.85 of strokes[1]..{right}(subpath (1,4) of strokes[p]){right}..point 2.15 of strokes[1]--cycle;

endglyph;
