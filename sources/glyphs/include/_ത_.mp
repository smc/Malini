clearxy;

z0=(thick/2-thin/2*middle_up_nib_scale, thin/2*middle_up_nib_scale);
z1= (x0, 0.6m);
z2 = ( x1 + mw/2.75, m-overshoot); % top
z3 = ( x2 + mw/2, (y2+y4)/2.5);
z4 = ( x3 - mw/4, undershoot); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2.5, 0.6m);
z8 = ( x7, 0);
paths[p]:=z0---z1..z2{right}..z3{down}..{left}z4{left}..z5{up}..z6{right}..z7---z8;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(7)
    nib(thick_vertical_nib)(8)
)(paths[p])(strokes[p]);
