input glyph;
beginglyph;

z0=(0, 1.05X);
z1=(x0, serif_height/4);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point 1 of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

lbearing:=serif_width/2;
anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
endglyph;
