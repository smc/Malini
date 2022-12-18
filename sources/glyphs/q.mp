input glyph;
beginglyph;
p:=0;
paths[p] := p_loop xyscaled(-1, 1) shifted (xpart(point 2 of p_loop), 0);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
    ignore_directions(1,2,3)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, s);
z1=(x0, -descent);
paths[p] := z0---z1;
paths[p] := paths[p] shifted(xpart(point 0 of paths[0]),0);

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[1]);
strokes[p] := serif_stroke(paths[p]);

endglyph;
