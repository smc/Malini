input glyph;
beginglyph;

p:=0;
z0=(0, 1.05X);
z1=(x0,  0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point 1 of paths[0]);
strokes[p] := serif_stroke_bottom(paths[p]);

% Slash
clearxy;
p:=p+1;
z0=(-serif_width, ypart(point 0.5 of paths[0]));
z1=(x0+sw/2, y0 +s/4);
paths[p]=z0--z1;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);
lbearing:=serif_width-lbearing;
endglyph;
