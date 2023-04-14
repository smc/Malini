
clearxy;
z0=(thick/2-thin/2, m);
z1=(x0, 1/3m);
z2=((x1 + x3)/2, undershoot);
z3=(x0 +  3/4mw, y2 + m/2);
z4=(x3 -  mw/3, m);
paths[p]:= z0---z1..z2{right}..z3{up}..z4;

pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
