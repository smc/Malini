input glyph;
beginglyph;
paths[0] = left_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[0])(strokes[0]);

clearxy;
z0=(thick*(1 - sind(50)), 0);
z1=(x0, m*0.6);
z2=((x1+x3)/2, 0.975m); % Top of arch
x3-x1 = 0.8*mw;
z3=(x3, m/2);
z4= (x3 - mw/4,thin/2);
z5= (x4 - mw/4, m/2);
z6= (x5 + mw/3, y5 + m/2);
z7= (x2, y6 + m/3);
z8= (x7 - mw/3, y7 - m/6);

paths[1] := z0---z1..z2..z3..z4..z5..z6..z7..z8;
paths[1] := paths[1] shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(top_nib)(7)
    nib(end_nib rotated terminalangle 8 of paths[1])(8)
)(paths[1])(strokes[1]);
paths[2] = ra shifted (mw*1.2, -y2 ) xscaled 0.75 yscaled 0.75;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[2])(strokes[2]);

anchor( "vc", (xpart(point 4 of paths[0]),0));
anchor( "bottom", point 4 of paths[2]);
anchor( "right", point 4 of paths[2]);
endglyph;
