input glyph;
beginglyph;
clearxy;
paths[1]:= p_loop xyscaled(-1, -1) shifted (xpart(point 2 of p_loop), m);

p:=0;
clearxy;
z0=(0, X);
z1=(x0  ,0);
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

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0];

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 1 of paths[0];


anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;
