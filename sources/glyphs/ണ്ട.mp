input glyph;
beginglyph;

paths[0] :=left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(thin_vertical_nib)(7,8)
)(paths[0])(strokes[0]);

% Second arch

paths[1] = middle_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[1])(strokes[1]);

% Third arch
z0=point 3 of paths[1];
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, y1 - m/3);
z3= ( x2 - mw/3, m/2);
z4= ( x3 + mw/3, y3 - .2m);
z5 = ( x4 + mw/6, y4 - .15m);
z6 = ( x1, 0);

paths[2] = z0{up}..z1..z2...z3..z4{right}..z5..{dir 160}z6;

pen_stroke(
    nib(thinnib)(2,4,5)
    nib(thinterminalnib rotated terminalangle 0 of paths[2])(0)
    nib(terminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);
anchor( "vc", point 1 of paths[1]);
anchor( "bottom", point 5.6 of paths[2]);
anchor( "right", point 5.6 of paths[2]);

endglyph;
