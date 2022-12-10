input glyph;
beginglyph;
p:=0;
z0=(x1 - thick/4, s);
z1=(0, y0 - thick);
z2=(x1, 0);
paths[p] := z0--z1--z2;
pen_stroke(
    nib(thick_vertical_nib rotated terminalangle 0 of paths[p])(0)
    nib(thick_vertical_nib)(1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p]:=n_arch;
paths[p]:=paths[p] shifted(xpart(point 1 of paths[p-1]) ,0);
pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left rotated 14 shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point infinity of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point infinity of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point infinity of paths[1];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point infinity of paths[1];

rbearing:=0;
anchor( "top", (xpart(point 1 of paths[1]), X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;
