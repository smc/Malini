clearxy;
z0=(thick/2-thin/2*middle_up_nib_scale, thin/2*middle_up_nib_scale)+(xpart(point infinity of paths[p-1]), 0);
z1= (x0, m*0.6);
z2 = ( (x1 + x3)/2, m-overshoot); % top
z3 = ( x1 + 0.9mw, (y2+y4)/2.5);
z4 = ( x3 - mw/4, 2undershoot); % bottom middle
z5 = ( (x1+x3)/2.1, (y4+y6)/2.5);
z6 = ( (x5 + x7)/1.85, y2); % second top
z7 = ( x1 + 1.45mw, (y6+y8)/2);
z8 = ( x7 - mw/3, (y6+y10)/2); % <
z9 = ( x8 + mw/2.5,  y8-m/3);
z10 = ( x6, y0 - m/6); %
z11 = ( xpart (point 0 of paths[p-1]), y10);
z12 = ( xpart (point 1 of paths[p-1]), (y11+y13)/2);
z13 = ( x11, -descent);
z14 = ( x9+thick/2, y13);
paths[p] = z0..z1{up}..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7{down}..{left}z8{right}..z9..z10---z11..z12..z13---z14;
paths[p]:=harmonize(paths[p]);
pen_stroke(
     cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7, 9)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(thin_vertical_nib rotated 90)(8)
    nib(down_nib)(10)
    nib(down_nib)(11)
    nib(down_nib rotated 70)(12)
    nib(thick_horizontal_nib)(13,14)
)(paths[p])(strokes[p]);
