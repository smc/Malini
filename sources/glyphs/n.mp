input glyph;
beginglyph;
p:=0;
z0=(0, s-thick/4);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p]:=n_arch;
paths[p]:=paths[p] shifted(xpart(point 1 of paths[p-1]) ,0);
pen_stroke(
    cut(end_nib scaled 2/3, rel 90)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
    ignore_directions(1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_left_slanted  shifted point 0 of paths[0];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(end_nib scaled 3/4 rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point infinity of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point infinity of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point infinity of paths[1];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point infinity of paths[1];

lbearing:=2lbearing;
rbearing:=0;
anchor( "top", (xpart(point 1 of paths[1]), X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;
