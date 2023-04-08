clearxy;
z0=(x1+mw/3, 0);
z1=(0, (y0+y2)/1.8);
z2=((x1+x3)/1.8, m-overshoot);
x3-x1 = 0.7*mw;
z3=(x3, (y2+y4)/2);
z4=(x3+mw/4, undershoot);
z5=(x4+mw/4, 0.4m);
z6=(x5,  m-thin/2);
paths[p] := z0..z1{up}..z2{right}..{down}z3..{right}z4..{up}z5..z6;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(thin_vertical_nib)(5)
    cut(thin_vertical_nib, -45)(6)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
paths[p]= subpath(0, 2) of right_arch_dha;
z0 = (xpart point infinity of paths[p]+ mw/2, y2);
z1 = (x0-mw/4, m-overshoot);
z2 = (x1-mw/4, y1 - m/4);
z3 = (x2+mw/4, y2 - m/4);
z4 = (x3+mw/4, y3 + m/4);
paths[p]:=paths[p]{right} ..z0{dir 100}..z1..z2..z3..{up}z4;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib)(4)
    nib(middle_down_nib scaled 0.8)(5)
    nib(down_nib)(6)
    nib(end_nib scaled 0.8 rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

