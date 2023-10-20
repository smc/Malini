input glyph;
beginglyph;
z0=(0, s);
z1=(x0, 1/3s);
z2=(0.4*x3, thin*1.2/4);
z3=(x0 + 0.75sw, 0.4s);
paths[p] := z0---z1..{right}z2..{dir 60}z3;
pen_stroke(
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
    nib(down_nib)(2)
    nib(thick_vertical_nib)(0,1)
    ignore_directions(2)
)(paths[p])(strokes[p]);


strokes[p] := top_left_straight_serif(strokes[p], 0);

p:=p+1;
clearxy;
z0=(0, s);
z1=(x0, 0);
paths[p] := z0--z1;
paths[p] := paths[p] shifted(xpart(point infinity of paths[0]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);




strokes[p] := top_left_straight_serif(strokes[p], 0);
% Leave some extra gap at bottom, near serif
strokes[p] :=  subpath(0, 2.75) of strokes[p]{down}
    .. {dir -80}subpath(3.15, 7) of strokes[p]
    --  cycle;
strokes[p] := bottom_right_serif(strokes[p], 4);

lbearing:=sw/3*0.1;
rbearing:=sw/3*0.1;
anchor( "top", (xpart(point 2.25 of paths[0]), 0.9X));
endglyph;
