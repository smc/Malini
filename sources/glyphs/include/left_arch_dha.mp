
clearxy;
clearxy;
z0=(x1+mw/3, m);
z1=(0, y0 - m/2);
z2=((x1+x3)/2, undershoot);
z3=(x2 +  mw/3, 1/3m);
z4=(x3, m);
paths[p] = z0..z1{down}..z2{right}..z3---z4;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib rotated -20)(1)
    nib(down_nib rotated -20)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p])(strokes[p]);