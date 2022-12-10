input glyph;
beginglyph;
p:=0;
paths[p] := u_arch ;
pen_stroke(
    nib(end_nib scaled 2/3 rotated terminalangle infinity of paths[p])(infinity)
    nib(down_nib)(2)
    nib(middle_down_nib)(0,1)
)(paths[p])(strokes[p]);
p:=p+1;

z0=(0, s);
z1=(x0, y2 + thick);
z2=(x0+thick/4, 0);
paths[p] := z0--z1--z2;
paths[p] := paths[p] shifted(xpart(point infinity of paths[0]), 0);
pen_stroke(
    nib(thick_vertical_nib rotated terminalangle 2 of paths[p])(2)
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[0];

p:=p+1;
strokes[p]:=paths[p] := serif_top_left shifted point 0 of paths[1];

p:=p+1;
strokes[p]:=paths[p] := serif_bottom_right rotated 14 shifted point 2 of paths[1];

anchor( "top", (xpart(point 3 of paths[0]), X));
endglyph;
