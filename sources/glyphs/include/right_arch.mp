clearxy;
z0=(thick/2-thin/2*middle_up_nib_scale, thin/2*middle_up_nib_scale);
z1=(x0, 0.6m);
z2=((x1+x3)/2.2, m-overshoot); % Top of arch
x3-x1 = 0.75*mw;
z3=(x3, (y2+y4)/2);
z4= (x3 - mw/3, 0);
paths[p]= z0---z1..z2{right}..z3{down}..z4;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);