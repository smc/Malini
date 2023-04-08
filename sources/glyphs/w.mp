input glyph;
beginglyph;

z0=(0, s-thick/4);
z1=(x0 + sw/2.75, thick*sind(45)/2);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 45)(1)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]),0)  ;
z1=(x0+sw/2.25, s-thick/4);
paths[p] = z0--z1 ;
paths[p] := subpath(0, 0.8) of paths[p] ;
pen_stroke(
       nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] = paths[0] shifted (xpart(point infinity of paths[p-1]) - thick/4,0);
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 45)(1)
)(paths[p])(strokes[p]);

p:=p+1;

paths[p] = (z0--z1) shifted (xpart(point infinity of paths[p-1]) - 0.36sw,0);
pen_stroke(
       nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0] + thin/2, s);
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.85 of strokes[0]..{right}(subpath (1,4) of strokes[p]){right}..point 0.15 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[2] + thin/2, s);
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (xpart  point 1 of paths[3] - thin/2, s);
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 0.85 of strokes[3]..{right}(subpath (1,4) of strokes[p]){right}..point 2.15 of strokes[3]--cycle;

lbearing:=serif_width/2;
anchor( "top", (xpart(point 0 of paths[2]), 0.9X));

endglyph;
