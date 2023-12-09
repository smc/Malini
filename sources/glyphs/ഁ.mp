input glyph;
beginglyph;
% Malayalam Sign Chandrabindu
z0 = (0, y1 + m/3);
z1=(x0 + mw/3, m+thick/2);
z2=(x1 + mw/3, y0);

paths[p] = z0{down}..{right}z1..{up}z2;
paths[p] := paths[p] shifted (-x1, 0);

pen_stroke(
    cut(middle_down_nib, 0)(0)
    nib(down_nib rotated -30)(1)
    cut(middle_up_nib, 0)(2)
)(paths[0])(strokes[0]);
clearxy;
soften:=0;
p:=p+1;
paths[1] = fullcircle scaled (thick*1.5)  shifted(xpart point 0 of paths[p-1]+mw/3, ypart point 0 of paths[0]);
strokes[1] = paths[1];
absolute_position := 1;

lbearing:= 0;
rbearing:= (xpart point 1 of strokes[0]) - (xpart point 2 of strokes[0]);

endglyph;
