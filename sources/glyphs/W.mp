input glyph;
beginglyph;

z0=(0, X-thick/4);
z1=(x0 + Xw/2.25, thick*0.25);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, rel 135)(1)
)(paths[p])(strokes[p]);

% Right slant -> /
p:=p+1;
clearxy;
z0= point 1 of strokes[p-1]  + (0, 0.1X);
z1=(x0+Xw/3.5, 0.8X);
paths[p] = z0--z1 ;
pen_stroke(
     cut(thin_nib scaled 1.25, rel 45)(0)
     cut(thin_nib scaled 1.25, rel 90)(1)
)(paths[p])(strokes[p]);

strokes[p]:=point 1 of strokes[p-1] -- subpath(1,3) of strokes[p]--cycle;

% \ slant
p:=p+1;
paths[p] = paths[0] shifted (xpart(point 3/4 of paths[p-1]), 0);
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, rel 135)(1)
)(paths[p])(strokes[p]);

% /
p:=p+1;
clearxy;
z0= point 1 of strokes[p-1]  + (0, 0.1X);
z1=(x0+Xw/3.25, X-thick/4);
paths[p] = z0--z1 ;
pen_stroke(
     cut(thin_nib scaled 1.25, rel 45)(0)
     cut(thin_nib scaled 1.25, rel 90)(1)
)(paths[p])(strokes[p]);
strokes[p]:=point 1 of strokes[p-1] -- subpath(1,3) of strokes[p]--cycle;

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0] + thin/2, X);
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.85 of strokes[0]..{right}(subpath (1,4) of strokes[p]){right}..point 0.15 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[2] + thin/2, X);
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.85 of strokes[2]..{right}(subpath (1,4) of strokes[p]){right}..point 0.15 of strokes[2]--cycle;

p:=p+1;
paths[p] := serif_top_thin shifted (xpart  point 1 of paths[3] - thin/2, X);
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 0.85 of strokes[3]..{right}(subpath (1,4) of strokes[p]){right}..point 2.15 of strokes[3]--cycle;

lbearing:=serif_width/2;
anchor( "top", (xpart(point 0 of paths[2]), 0.9X));

endglyph;
