input glyph;
beginglyph;
z0 = (sw/3, 0);
z1 = (x0 , y0 - m/4 - thick/2);

z2 = (x1  , y1 + thin/2);
z3 = (x2 + sw/3, y2 - m/4);
z4 = (x2-thick, y3 - m/4);

paths[0] = z0 -- z1;
paths[1] = z2{right}..z3{down}..z4;

paths[0] := paths[0] crotated -20;


pen_stroke(
    nib(thick_nib rotated terminalangle 0 of paths[0])(0)
    cut(thick_nib rotated terminalangle infinity of paths[0], 0)(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    cut(thin_nib rotated terminalangle 0 of paths[1], 90)(0)
    nib(middle_down_nib rotated terminalangle 1 of paths[1])(1)
    nib(end_nib rotated terminalangle 2 of paths[1])(2)
)(paths[1])(strokes[1]);
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;
