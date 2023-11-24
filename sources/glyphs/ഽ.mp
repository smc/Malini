% Avagraha
input glyph;
beginglyph;

z0 = (x1+mw/4, m);
z1 = ((x0+x2)/2, 1.25m);
z2 = (mw/2, (y1+y3)/2);
z3 = ((x2+x4)/2, -descent*0.75);
z4 = (0, 0);
paths[0] = z0{up}..z1{left}..z2{dir -85}..z3{left}..{up}z4;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(middle_down_nib)(2)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
endglyph;
