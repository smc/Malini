input glyph;
beginglyph;

z0 = (0, y1 + m/4);
z1 = (x0 + mw/4, -descent*1.2);
z2 = (x1 + mw/4, y0);
z3 = (x1, m/2);
z4 = (x3, m);

paths[0] = z0{down}..z1{right}..z2{up}..{dir 100}z3..z4;
paths[0] := paths[0] shifted(-x3,0);
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[0])(strokes[0]);
anchor( "right", point 1.5 of paths[0]);
endglyph;
