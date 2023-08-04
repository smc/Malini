input glyph;
beginglyph;
z0=(0, s-thick/4);
z1=(x0 + sw/2, thick/4);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 60+slant)(1)
)(paths[p])(strokes[p]);

% Right slant
p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]) + sw/2.5, s-thick/4);
z1=(xpart(point infinity of paths[p-1]) - sw/4.75, -descent*0.9)  ;
z2=(x1 - sw/4, y1);
paths[p] = z0--z1{dir -120}..{dir 120}z2 ;
pen_stroke(
     nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0] + thin/2, s);
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.85 of strokes[0]{dir 120}..{right}(subpath (1,4) of strokes[p]){right}..{dir -60}point 0.15 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_top_thin shifted (xpart point 0 of paths[1] - thick/2, s);
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 6.9 of strokes[1]{dir 60}..{right}(subpath (1,4) of strokes[p]){right}..{dir -115}point 0.15 of strokes[1]--cycle;

anchor( "top", (xpart(point 1 of paths[0]), 0.9X));
endglyph;
