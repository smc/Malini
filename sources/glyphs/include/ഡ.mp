
z0=(x1+mw/3, 0);
z1=(0, (y0+y2)/1.8);
z2=((x1+x3)/1.8, m-overshoot);
x3-x1 = 0.7*mw;
z3=(x3, (y2+y5)*0.6);
z4=(x3, (y2+y5)*0.35);
z5=(x4+mw/4, undershoot);
z6=(x5+mw/4, 0.4m);
z7=(x6,  m-thin/2);
paths[p] := z0..z1{up}..z2{right}.. {down}z3..{down}z4..{right}z5..{up}z6--z7;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
    nib(down_nib)(5)
    nib(thin_vertical_nib)(6)
    cut(thin_vertical_nib, -45)(7)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);
