clearxy;
z0=(x1 + mw/3 , undershoot);
z1=(0, (y0+y2)/2.08);
z2=((x1+x3)/2, m-overshoot);
x3-x1 = 0.9mw;
z3=(x3, (y2+y4)/2);
z4=(x3 - mw/3, undershoot);
paths[p] = z0..z1{up}..z2{right}..z3{down}..z4;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
