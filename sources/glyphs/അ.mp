input glyph;
beginglyph;
z0 = ( x1 + mw/4 , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/1.8, m); % top
z3 = ( x2 + mw/3, y2 - m/4);
z4 = ( x3 - mw/4, y3 - m/4); % <
z5 = ( x4 + mw/3, y4-m/4);
z6 = ( x5 - mw/3, y0 + thick*0.5/2);
z7 = ( x6 - mw/4, y6 + m/2.5);
z8 = ( x7 + mw/2.5, m*0.975);   % top
z9 = ( x8 + mw/2, y8-m/2.5);
z10 = ( x9, 0);
paths[0] = z0..z1..z2..z3..{left}z4{right}..z5..z6..{up}z7..z8..{down}z9---z10;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib scaled 0.9)(3, 5)
    nib(down_nib)(6)
    nib(middle_up_nib)(7)
    nib(top_nib)(8)
    nib(thin_vertical_nib)(9)
    nib(thin_vertical_nib)(10)
)(paths[0])(strokes[0]);

paths[1] = right_arch_with_eye shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    ignore_directions(2, 3, 4)
)(paths[1])(strokes[1]);
endglyph;
