input glyph;
beginglyph;
clearxy;
paths[1]:= p_loop xyscaled(-1, -1) shifted (xpart(point 2 of p_loop), m);

clearxy;
z0=(0, 1.05X);
z1=(x0, thin/4);

paths[p] := z0--z1;
paths[p] :=paths[p] shifted (xpart(point 0 of paths[1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)

)(paths[p])(strokes[p]);

% cross
clearxy;
p:=p+1;
z0=(xpart(point 0.6 of paths[1]), ypart(point 0.2 of paths[0]));
z1=(x0+sw/2, y0);
paths[p]=z0--z1;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
clearxy;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_slanted shifted point infinity of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

endglyph;
