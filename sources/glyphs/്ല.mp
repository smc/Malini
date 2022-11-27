input glyph;

beginglyph;
z0=(0, -descent);
z1=(x0 + mw/3, y0+mw/12);
z2=((x1 + x0)/2, -m/2);
z3=(x0, y2 + m/4);
z4=(x3 + mw/3.5, 0);
z5=(x4 + mw/3.5, y4 - m/4);
z6=(x5 + mw/4, y5 - m/4);
z7=(x6 + mw/4, y6 + m/4);
z8=(x7 - mw/6, y7 + m/4);
paths[0] = z0{up}..z1{dir -70}...z2{left}..{up}z3..z4{right}..z5{dir -80}..z6..z7..z8;
pen_stroke(
    nib(middle_up_nib)(0, 1, 7)
    nib(down_nib)(2, 6)
    nib(middle_up_nib)(3)
    nib(top_nib)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated -90)(8)
)(paths[0])(strokes[0]);

anchor( "bottom", (xpart(point 7 of paths[0]),0));
anchor( "right", point 6.5 of paths[0]);
endglyph;