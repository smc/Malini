input glyph;
beginglyph;
z0 = (x2, 2/3m);
z1 = (0, y3);
z2 = (x1 + mw/4, -m/4);
z3 = (x2 + mw/3, 0);

paths[0] := z0{dir -80}..z1{down}..z2..z3;
soften:=0;
paths[1] = fullcircle scaled (thick*1.5)  shifted(x0, m);

pen_stroke(
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[1] = paths[1];

endglyph;