input glyph;
beginglyph;
p:=0;
z0 = (0, y1 + m/3);
z1 = ((x0 + x2)/2, -descent);
z2 = (x1 + mw/3.5, y1 + m/3);
z3 = (x1, m/2);
z4 = (x3, m);

paths[p] = z0{dir -100}..z1{right}..z2{dir 100}..{dir 100}z3.. z4;
paths[p] := paths[0] shifted(-x3,0);
pen_stroke(
    nib(middle_down_nib rotated terminalangle 0 of paths[0])(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(middle_down_nib)(3,4)
    ignore_directions(1,2, 3)
)(paths[p])(strokes[p]);
anchor( "right", point 1.5 of paths[p]);
endglyph;
