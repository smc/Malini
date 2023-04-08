input glyph;
beginglyph;

z0=(0, X-thick/4);
z1=(x0, thick/4);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point 1 of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);


anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
endglyph;
