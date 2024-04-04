input glyph;
beginglyph;

z0=(0, X+serif_height);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);

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
