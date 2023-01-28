input glyph;
beginglyph;
save r,e;
r=0.75;
z0 = (r*sw, .75s);
z1 = ((x0 + x2)/1.8, s - overshoot);
z2 = (0, s/2);
z3 = ((x0 + x2)/1.75, undershoot);
z4 = (x0+thin*1.2/2, y3+ s/4);
paths[0]:=z0{up}..{left}z1..z2{down}..z3{right}..z4;

pen_stroke(
    nib(thicknib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib scaled 0.9)(1)
    nib(down_nib)(3)
    nib(end_nib scaled 2/3 rotated terminalangle 4 of paths[0])(4)

)(paths[0])(strokes[0]);


anchor( "top", (xpart(point 1 of paths[0]), 0.9X));
endglyph;
