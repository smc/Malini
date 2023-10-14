input glyph;
beginglyph;
z0 = (x1 + mw/6, -0.1*descent);
z1 = (0, y2 + m/3);
z2 = ((x1 + x3)/2, -descent*1.2);
z3 = (x2 + mw/3.5, y2 + m/3);
z4 = (x2, 0.4m);
z5 = (x2, m);

paths[p] = z0{dir -80}..{left}z1{left}..z2{dir 10}..z3{up}..z4..z5;
paths[p] := paths[p] shifted(-x4+mw*0.15,0);
pen_stroke(
    cut(end_nib rotated terminalangle 0 of paths[0], 0)(0)
    nib(down_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(middle_down_nib scaled 0.8)(4)
    cut(thick_nib, rel 90)(5)
)(paths[p])(strokes[p]);

rbearing:=rbearing/2;
absolute_position := 1;

anchor( "right", point 2.5 of paths[p]);
endglyph;
