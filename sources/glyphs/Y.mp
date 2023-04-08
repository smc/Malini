input glyph;
beginglyph;
save w;
z0=(0, X- thick/4);
z1=(x0 + Xw/3, 0.4X);
z2=(x1, thick/4);

z3=(x0 + 2Xw/3, X- thick/4);
z4=(x1, y1);

paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = z3--z4;
pen_stroke(
  nib(thin_vertical_nib scaled 1.25)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = z1+(0, thick/2)--z2;
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0] + thin/2, X);
strokes[p] := serif_stroke_top(paths[p]);
strokes[p]:= point 2.8 of strokes[0]{dir 120}..{right}(subpath (1,4) of strokes[p]){right}..{dir -60}point 0.2 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_top_thin shifted (xpart point 0 of paths[1] - thick/2, X);
strokes[p] := serif_stroke_top_thin(paths[p]);
strokes[p]:= point 2.8 of strokes[1]{dir 60}..{right}(subpath (1,4) of strokes[p]){right}..{dir -120}point 0.2 of strokes[1]--cycle;


p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[2], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

anchor( "top", (xpart(point 1 of paths[2]), 1.2X));
endglyph;
