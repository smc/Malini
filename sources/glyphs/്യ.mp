input glyph;
beginglyph;
z0 = (0, y1 + m/3);
z1 = ((x0 + x2)/2, -descent);
z2 = (x1 + mw/3.5, y1 + m/3);
z3 = (x1, 0.6m);
z4 = (x3, m);

paths[p] = z0{dir -100}..z1{right}..z2..z3---z4;
paths[p] := paths[p] shifted(-x3,0);
pen_stroke(
    nib(middle_down_nib rotated terminalangle 0 of paths[0])(0)
    nib(down_nib)(1)
    nib(middle_down_nib scaled 0.8)(2)
    nib(middle_down_nib)(3)
    cut(middle_down_nib, rel 90)(4)
)(paths[p])(strokes[p]);

anchor( "right", point 1.5 of paths[p]);
endglyph;
