input glyph;
beginglyph;
paths[p] = left_tha_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(thick_vertical_nib)(7)
    nib(thick_vertical_nib)(8)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(thick/2-thin/2, thin/2) + (xpart(point infinity of paths[p-1]), 0);
z1= (x0, m*0.6);
z2 = ( x1 + mw/2.75, m - overshoot); % top
z3 = ( x2 + mw/2, 0.4m);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, m/2);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y6-m/4);
z8 = ( x7 - mw/3, y7-m/4);
z9 = ( x8 + mw/2.5, y8-m/3);
z10 = ( x6, y0 - m/8); %
z11 = (xpart(point 0 of paths[0]), y10);
z12 = ( xpart point 1 of paths[0], (y11+y13)/2);
z13 = ( x11, -descent);
z14 = ( x7 + thick/2, y13);
paths[p] = z0---z1..z2{right}..z3..{left}z4{left}..z5..z6{dir 10}..z7{down}..{left}z8{right}..z9{down}..z10---z11..z12..z13---z14;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7, 9)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib rotated 90)(8)
    nib(down_nib)(10)
    nib(down_nib)(11)
    nib(down_nib rotated 90)(12)
    nib(thick_horizontal_nib)(13,14)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point infinity of paths[0]),0));
endglyph;
