input glyph;
beginglyph;
input ./glyphs/include/ഒ;

clearxy;
p:=p+1;
z0=(0, 0.7m);
z1=((x0 + x2)/2.24, m-overshoot);
z2=(x0 + 0.75mw, (y1+y3)/2);
z3=(x1, undershoot);
z4=(x0, y1-y0);
paths[p] = z0..z1{right} ..z2{down}..z3{left} ..z4;
paths[p]:= paths[2] shifted(xpart(point 5 of paths[1]) + mw/4, 0);
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[p])(strokes[p]);

endglyph;

