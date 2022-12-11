input glyph;
beginglyph;

z0=(0, 1.1m);
z1=((x0 + x2)/2, 1.4m);
z2=(x1 + mw*0.3, m);
z3=(x2, 0);

paths[0] =  z0{up}..z1..z2 --- z3;
paths[0] := paths[0] shifted (-x2+thick/2, 0);

pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2)
    nib(thick_vertical_nib)(3)
)(paths[0])(strokes[0]);

endglyph;
