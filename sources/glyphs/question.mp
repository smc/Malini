input glyph;
beginglyph;
z0 = (0, 3/4X);
z1 = (x0+ Xw/4, X-overshoot);
z2 = (x1+ Xw/5, y0);
z3 = (x0+ Xw/5, X/4);

paths[0] := z0{up}..z1..z2{down}..{dir -80}z3;
soften:=0;
paths[1] = fullcircle scaled (thick*1.5)  shifted(x3, 0);

pen_stroke(
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(thicknib scaled 1.2 rotated terminalangle 0 of paths[0])(0)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[1] = paths[1];

endglyph;