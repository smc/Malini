input glyph;
beginglyph;
save r,e;
r=0.8;
z0 = (r*sw, 0.7s);
z1 = ((x0 + x2)/2, s - thick/4);
z2 = (0, s/2);
z3 = (x1, thick/4);
z4 = (x0, 0.25s);
paths[0]:=z0..{left}z1..{down}z2..z3{right}..z4;

pen_stroke(
    nib(middle_up_nib rotated 30)(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(end_nib rotated 120)(4)
)(paths[0])(strokes[0]);

anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;
