input glyph;
beginglyph;
z0=(0, 0.8y1);
z1=((x0 + x2)/2, s-overshoot);
z2=(x0 + Xw/2, (y1+y3)/2);
z3=(x2 - Xw/3, 0.4y1);
z4=(x2 + thick/2, (y3+y5)/2);
z5=((x4+x6)/2, -descent*0.8+undershoot);
z6=(x0, y5+m/6);

paths[p] = z0..z1{right}..{down}z2..{left}z3{right}..z4{down}..{left}z5..z6;

pen_stroke(
    nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,4)
    nib(end_nib rotated 90)(3)
    nib(down_nib)(5)
    nib(thicknib rotated terminalangle 6  of paths[p])(6)
)(paths[p])(strokes[p]);


endglyph;