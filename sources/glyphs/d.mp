input glyph;
beginglyph;
clearxy;
paths[1]:= p_loop xyscaled(-1, -1) shifted (xpart(point 2 of p_loop), m);

p:=0;
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
    ignore_directions(1, 2, 3)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
clearxy;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

p:=p+1;
paths[p] := serif_bottom_slanted shifted point infinity of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;
