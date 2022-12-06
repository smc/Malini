input glyph;
beginglyph;
paths[1] := p_loop xyscaled(-1, 1) shifted (xpart(point 2 of p_loop), 0);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[1])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[1])(4)
)(paths[1])(strokes[1]);

z0=(0, s);
z1=(0, y2 + 2/3thick);
z2=(x0, -descent);
paths[0] := z0---z1---z2;
paths[0] := paths[0] shifted(xpart(point 0 of paths[1]),0);

pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(end_nib scaled 3)(infinity)
)(paths[0])(strokes[0]);

endglyph;
