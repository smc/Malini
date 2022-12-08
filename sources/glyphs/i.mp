input glyph;
beginglyph;
p:=0;
z0=(0, s);
z1=(x0  ,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

%serif
p:=p+1;
paths[1] := serif_top_left shifted point 0 of paths[p-1];
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[p])(0)
    nib(end_nib scaled 0.5 rotated terminalangle 1 of paths[p])(1)
    nib(end_nib scaled 0.5 rotated terminalangle 2 of paths[p])(2)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(x1, 1.33s);

strokes[p] = paths[p];

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_left shifted point 1 of paths[0];
p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right shifted point 1 of paths[0];

endglyph;
