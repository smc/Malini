input glyph;
beginglyph;


paths[0] := left_arch_with_eye shifted(mw/3, 0);
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(thick_vertical_nib)(6,7,8)
)(paths[0])(strokes[0]);

clearxy;
z0=point 7 of paths[0];
z1=(x0 + mw/2, y0 + m/2); % Top of third arch
z2=(x1 + mw/2.5, y1 - m/2);
z3= ( x2 - 0.75mw, -descent);
z4= (0, m/3);
z5= (mw/6, m);

paths[1] = z0{up}..z1..z2..z3..z4..z5;

pen_stroke(
    nib(thicknib)( 3, 6)
    nib(thinnib)( 2,4,6)
    nib(thinterminalnib rotated terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated terminalangle 3 of paths[1])(3)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);

endglyph;
