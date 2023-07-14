input glyph;
beginglyph;
z0=(0, s-thick/4);
z1=(x0 + sw/2.25, thick*0.25);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, rel 135)(1)
)(paths[p])(strokes[p]);

% Right slant
p:=p+1;
clearxy;
z0= point 1 of strokes[p-1]  + (0, 0.1s);
z1=(x0+sw/2.25, s-thick/4);
paths[p] = z0--z1 ;
pen_stroke(
     cut(thin_nib scaled 1.25, rel 45)(0)
     cut(thin_nib scaled 1.25, rel 90)(1)
)(paths[p])(strokes[p]);

strokes[p]:=point 1 of strokes[p-1] -- subpath(1,3) of strokes[p]--cycle;

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0] + thin/2, s);
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.85 of strokes[0]..{right}(subpath (1,4) of strokes[p]){right}..point 0.15 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_top_thin shifted (xpart point 1 of paths[1] - thin/2, s);
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 0.85 of strokes[1]..{right}(subpath (1,4) of strokes[p]){right}..point 2.15 of strokes[1]--cycle;

endglyph;
