input glyph;
beginglyph;
input ./glyphs/include/left_arch;

p:=p+1;
clearxy;
z0=point infinity of paths[p-1] + (thick/2-thin/2, undershoot);
z1=(x0, 0.6m);
z2=((x1+x3)/2, m - overshoot); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, m/3);
z5= ( x4+ mw/3, undershoot);
z6= ( x5 + mw/4, m/3);

paths[p] = z0---z1..z2..z3---z4..z5..z6;

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)

)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", (xpart( point infinity of paths[1]),0));
anchor( "right", point 2.2 of paths[p]);

endglyph;
