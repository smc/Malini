input glyph;
beginglyph;

paths[0] := subpath(0, 4) of da shifted(mw/3,0);
z5=(xpart(point infinity of paths[0]) + 0.4mw, 0);
z6=(xpart(point 1.8 of paths[0]), -descent*0.8);
z7=(xpart(point 1 of paths[0]) - mw/3, ypart(point 1 of paths[0]));
z8=(x7 + mw/4, m);
paths[0] := paths[0]{right}..z5..z6..z7.. z8;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1, 7)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(down_nib)(6)
    nib(end_nib rotated terminalangle 9 of paths[0])(9)
)(paths[0])(strokes[0]);

anchor( "vc", point 2 of paths[0]);
anchor( "right", point 5.25 of paths[0]);

endglyph;
