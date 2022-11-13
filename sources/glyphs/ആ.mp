input glyph;
beginglyph;
z0 = ( x1 + mw/4 , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2.2, m); % top
z3 = ( x2 + mw/4, y0 + m/2); % <
z4 = ( x3 + 0.25mw, y3-m/4);
z5 = ( x4 - 0.25mw, y0);
z6 = ( x5 - mw/3, y5 + m/2.5);
z7 = ( x6 + mw/2.5, m);   % top
z8 = ( x7 + mw/2, y7-m/2.5);
z9 = ( x8, 0);
paths[0] = z0..z1..z2..{left}z3{right}..z4..z5..{up}z6..z7..{down}z8---z9;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib rotated 90)(3)
    nib(middle_down_nib )(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(top_nib)(7)
    nib(thin_vertical_nib)(8)
    nib(thin_vertical_nib)(9)
)(paths[0])(strokes[0]);

clearxy;
z0 = (0,0) + (xpart(point infinity of paths[0]), 0) + + (thick*0.60/2, 0);;
z1= ( x0 , m/2);
z2= ( x1 + mw/2, m);
z3= ( x2 + mw/2.5, y1);
z4= ( x3 - mw/3, 0);
z5= ( x4 - mw/4, y4 + m/3);
z6= ( x4 + mw/4, y3 + m/6);
z7= ( x5 + mw, y6 - m/2);
z8= ( x4, -descent);

paths[1] = z0---z1..z2..z3..z4{left}..z5..{right}z6..z7..z8;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(middle_down_nib)(7)
    nib(end_nib rotated -60)(8)
)(paths[1])(strokes[1]);
endglyph;
