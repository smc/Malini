input glyph;
beginglyph;
z0=(x1, serif_height/4);
z1=(mw/10, X);
paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[0]);

% Top left slanted serif
strokes[p] := subpath (0, 1 ) of strokes[p]
    -- point 1.25 of strokes[p]
    -- (xpart point 2 of strokes[p] - 0.8serif_width, 0.85X)
    -- (xpart point 2 of strokes[p] - 0.75serif_width, 0.8X)
    -- (xpart point 2 of strokes[p], 0.85X)
    -- point 3 of strokes[p]
    -- cycle;

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

lbearing:=2*lbearing;
rbearing:=2*rbearing;
endglyph;