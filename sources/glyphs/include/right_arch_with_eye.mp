clearxy;
path l;
z0 = (thick/2-thin/2*middle_up_nib_scale, thin/2*middle_up_nib_scale);
z1=(x0, 0.6m);
z2=((x1 + x3)/2, m-overshoot);
z3=(x1 + 0.9mw, (y2+y4)/2.4);
z4=((x3 + x5)/2, undershoot); % Bottom
z5=(x3 -0.55*mw, y4 + m/3);
l=z0---z1..z2..z3..z4..z5;
z6=point 2.8 of l;
paths[p] := z0---z1..z2{right}..z3{down}..z4{left}..z5..z6;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    ignore_directions(3,4,5)
)(paths[p])(strokes[p]);
