 clearxy;
path l;
z0 = (thick/2-thin/2, thin/2);
z1=(x0, 0.6m);
z2=((x1 + x3)/2.2, m-overshoot);
z3=(x1 + 0.85mw, (y2+y4)/2.4);
z4=((x3 + x5)/2, undershoot); % Bottom
z5=(x3 -0.55*mw, y4 + m/3);
l=z0---z1..z2..z3..z4..z5;
z6=point 2.8 of l;
paths[p] := z0---z1..z2{right}..z3{down}..z4{left}..z5..z6;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
)(paths[p])(strokes[p]);
