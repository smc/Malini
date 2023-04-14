clearxy;
z0=(x1+mw/3, 0);
z1=(0, (y0+y2)/1.8);
z2=((x1+x3)/1.8, m-overshoot);
x3-x1 = 0.7*mw;
z3=(x3, 0.6m);
z4=(x3, 0); % bottom of piller
paths[p]=z0..z1{up}..z2{right}..{down}z3---z4;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);
