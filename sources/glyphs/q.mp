input glyph;
beginglyph;
paths[p] := p_loop xyscaled(-1, -1) shifted (xpart(point 2 of p_loop), m);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)

)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, s);
z1=(0, 0.85s);
z2=(x1, -descent+thick/4);
paths[p] := z0--z1---z2;
paths[p] := paths[p] shifted(xpart(point 0 of paths[0]),0);

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);
% Remove a triangular piece from the top left of vertical bar
strokes[p]:=(point 0 of strokes[p] + (thick/2, 0))-- subpath (1,5) of strokes[p]--cycle;

% Serifs
p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[1], -descent);
strokes[p] := serif_stroke_bottom(paths[p]);

endglyph;
