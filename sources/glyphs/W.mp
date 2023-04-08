input glyph;
beginglyph;
z0=(0, X - thick/4);
z1=(x0 + Xw/3, 0);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_vertical_nib)(0)
     nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1])+thin/4,0)  ;
z1=(x0+Xw/3, X- thick/4);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thin_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := paths[p-2] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
     nib(thick_vertical_nib)(0)
     nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := paths[p-2] shifted (xpart(point infinity of paths[p-2]), 0);
pen_stroke(
     nib(thin_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0] + thin/2, X);
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.85 of strokes[0]..{right}(subpath (1,4) of strokes[p]){right}..point 0.15 of strokes[0]--cycle;


p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[2] + thin/2, X);
strokes[p] := serif_stroke_top(paths[p]);


p:=p+1;
paths[p] := serif_top_thin shifted (xpart point 1 of paths[3] - thin/2, X);
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 0.85 of strokes[3]..{right}(subpath (1,4) of strokes[p]){right}..point 2.15 of strokes[3]--cycle;


anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
endglyph;
