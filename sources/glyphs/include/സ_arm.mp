p:=p+1;
clearxy;
z0=point infinity of paths[p-1] + (thick/2-thin/2, thin/2);
z1=(x0, 0.6m);
z2=((x1+x3)/2, m - overshoot); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, 0.4m);
z5= ( x4+ mw/3, undershoot);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x5, m);

paths[p] = z0---z1..z2{right}..z3---z4..z5{right}..z6{up}..z7;

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib rotated -20)(5)
    nib(middle_up_nib)(6)
    nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

