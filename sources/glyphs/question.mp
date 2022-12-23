input glyph;
beginglyph;
z0 = (0, 3/4m);
z1 = (x0+ mw/3, m);
z2 = (x1+ mw/4, y0);
z3 = (x1, m/4);

paths[0] := z0..z1..z2{down}..{dir -80}z3;
soften:=0;
paths[1] = fullcircle scaled (thick*1.5)  shifted(x1, 0);

pen_stroke(
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[1] = paths[1];

endglyph;