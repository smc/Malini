input glyph;
beginglyph;
z0 = ( x1 + mw/4 , 0);
z1 = ( 0, (y0 + y2)/2.2);
z2 = ( x1 + mw/1.8, m - overshoot); % top
z3 = ( x2 + mw/3, y2 - m/4);
z4 = ( x3 - mw/4, y3 - m/4); % <
z5 = ( x4 + mw/3, y4-m/4);
z6 = ( (x5 + x7)/1.85, undershoot);
z7 = ( x5 - mw/1.75, y6 + m/2.5);
z8 = ( (x7 + x9)/1.8, m*0.95);   % top
z9 = ( x7 + 0.9mw, 2/3m);
z10 = ( x9, 0);
paths[0] = z0..z1..z2..z3..{left}z4{right}..z5{down}..z6..{up}z7..z8..{down}z9---z10;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib scaled 0.9)(3, 5)
    nib(down_nib)(6)
    nib(middle_up_nib)(7)
    nib(top_nib)(8)
    nib(thick_vertical_nib)(9)
    nib(thick_vertical_nib)(10)
)(paths[0])(strokes[0]);

paths[1] = right_arch_with_tail shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(middle_down_nib)(7)
    nib(end_nib rotated terminalangle 8 of paths[1])(8)
    ignore_directions(2, 3, 4, 5, 6, 7)
)(paths[1])(strokes[1]);
endglyph;
