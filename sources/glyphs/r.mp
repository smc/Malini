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


clearxy;
p:=p+1;
z0=(0, 0.6s);
z1=(0.5sw, s-thick/2);

paths[p]:= z0{dir 60}..z1{dir -20};
paths[p] := paths[p] shifted(xpart(point 0 of paths[p-1]), 0);

pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(thicknib rotated terminalangle 2 of paths[1])(2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left rotated 14 shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point infinity of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point infinity of paths[0];
anchor( "top", (xpart(point 1.5 of paths[1]), X));
anchor( "bottom", (xpart(point 1.5 of paths[1]), 0));
endglyph;
