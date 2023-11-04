input glyph;
beginglyph;
input ./glyphs/include/left_arch;

p:=p+1;
clearxy;
z0=(thick/2-thin/2*middle_up_nib_scale, thin/2*middle_up_nib_scale);
z1=(x0, m*0.6);
z2=(x1+mw/3, m - overshoot); % Top of arch
z3=(x2+mw/2, 0.4m);
z4= (x3 - mw/4,thin/2);
z5= (x4 - mw/4, (y4 + y6)/3);
z6= (x4, ascent);


paths[p] := z0---z1..z2..z3..z4..z5{up}..{up}z6;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib rotated terminalangle 6 of paths[p])(6)
)(paths[p])(strokes[p]);

endglyph;
