z0=(0, 0.7m);
z1=((x0 + x2)/2.2, m-overshoot);
z2=(x0 + 2/3mw, (y1+y3)/2);
z3=(x1, undershoot);
z4=(x0, y1-y0);
paths[p] = z0..z1{right} ..z2{down}..z3{left} ..z4;

pen_stroke(
    cut(end_nib, rel 90)(0)
    cut(end_nib, rel 90)(4)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
)(paths[p])(strokes[p]);
