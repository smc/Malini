z0=(thick/2-thin/2, thin/2);
z1 = ( x0, 0.6m);
z2 = ( x1 + mw/2.5, m-overshoot); % top
z3 = ( x2 + mw/3, y2 - m/4);
z4 = ( x3 - mw/3, y3 - m/4); % <
z5 = ( x3+ thick/4, y4-m/4);
z6 = ( x4, thin/2);
paths[p] =z0---z1{up}..{right}z2..z3..{left}z4{right}..z5{down}..{dir 150}z6;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated terminalangle 6 of paths[p])(6)
)(paths[p])(strokes[p]);
