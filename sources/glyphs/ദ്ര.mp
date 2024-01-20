input glyph;
beginglyph;

paths[0] := subpath(0, 4) of da shifted(mw/3,0);
z5=(xpart(point infinity of paths[0]) + 0.4mw, 0);
z6=(xpart(point 1.8 of paths[0]), reph_sign_depth);
z8=(xpart point 1 of paths[0] - mw/6, m);

paths[0] := paths[0]{right}..z5{down}..z6{left}.. {dir 50}z8;
dt := directiontime dir 90 of subpath( 6, 7) of paths[p];
paths[p] := insert_nodes(paths[p])(6 + dt);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1, 7)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(middle_down_nib rotated terminalangle 6 of paths[p] scaled 0.9)(6)
    nib(end_nib rotated terminalangle 7 of paths[p])(7)
    nib(end_nib rotated terminalangle 8 of paths[0])(8)
)(paths[0])(strokes[0]);

anchor( "vc", point 2 of paths[0]);
anchor( "right", point 5.25 of paths[0]);

endglyph;
