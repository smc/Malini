clearxy;
z0=(thick/2-thin/2, thin/2);
z1= (x0, 0.6m);
z2 = ( x1 + mw/2.75, m-overshoot); % top
z3 = ( x2 + mw/2, (y2+y4)/2.5);
z4 = ( x3 - mw/4, 2undershoot); % bottom middle
z5 = ( (x1+x3)/2.5, (y4+y6)/2.5);
z6 = ( (x5 + x7)/2, y2); % second top
z7 = ( x6 + mw/2, (y6+y8)/2);
z8 = ( x7 - mw/3, 0);
paths[p]:=z0---z1..z2{right}..z3{down}..{left}z4{left}..z5{up}..z6{right}..z7{down}..z8;

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib  rotated terminalangle 8 of paths[p])(8)
)(paths[p])(strokes[p]);
