input glyph;
beginglyph;
input ./glyphs/include/ണ;

p:=p+1;
clearxy;
z0=(0, m/2);
z1=(x0 + 0.4mw, y0 + m/2);
z2=(x1 + 0.4mw, y1 - m/2);
z3=(x2 - 0.4mw, y2 - m/2);
z4=z0;

paths[p] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4;
paths[p] := paths[p] shifted(xpart(point 2 of paths[p-1]), -m) xscaled 0.8 yscaled 0.7;

pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 1 of paths[1]),0));
anchor( "bottom", point 2.25 of paths[3]);
anchor( "right", point 2.25 of paths[3]);

endglyph;
