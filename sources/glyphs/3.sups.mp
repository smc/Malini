input glyph;
beginglyph;
z0=(0, 0.85y1);
z1=((x0 + x2)/2, X-overshoot);
z2=(x0 + Xw/2.5, (y1+y3)/2);
z3=(x2 - Xw/3.5, 0.7y1);
z4=(x2 + thick/3, (y3+y5)/2);
z5=((x4+x6)/2, 0.45m);
z6=(x0,y5+m/6);

paths[p] = z0..z1{right}..{down}z2..{left}z3{right}..z4{down}..{left}z5..z6;

pen_stroke(
    nib(end_nib scaled 0.7 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib scaled 0.8)(1)
    nib(middle_down_nib scaled 0.8)(2,4)
    nib(end_nib scaled 0.8 rotated 90)(3)
    nib(down_nib scaled 0.8)(5)
    nib(thicknib scaled 0.8 rotated terminalangle infinity of paths[p])(6)
)(paths[p])(strokes[p]);


endglyph;