input glyph;
beginglyph;
p:=0;
paths[p] := left_arch_with_eye;
pen_stroke(
    nib(thicknib)(0, 2, 4, 6)
    nib(thinnib)(1,3, 5)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[p])(strokes[p]);

clearxy;

p:=p+1;
clearxy;
z0=(thick*(1 - sind(50)), 0);
z1=(x0, m*0.6);
z2=((x1+x3)/2, m - overshoot); % Top of arch
x3-x1 = 0.8*mw;
z3=(x3, m/2);
z4= (x3 - mw/4,thin/2);
z5= (x4 - mw/4, (y4 + y6)/2);
z6= (x5 + mw/3, (y5 + y7)/2);
z7= (x2, ascent);
z8= (x7 - mw/3, y7 - m/6);

paths[p] := z0---z1..z2..z3..z4..z5..z6..z7..z8;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(top_nib)(7)
    nib(end_nib)(8)
)(paths[p])(strokes[p]);
endglyph;
