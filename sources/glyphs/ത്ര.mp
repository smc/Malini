input glyph;
beginglyph;
input ./glyphs/include/ത;

clearxy;
z8 = (xpart point 4 of paths[p], reph_sign_depth); % ra sign starts
z9 = (xpart point 1 of paths[p] -mw/6, m);

paths[p] := (subpath(0, 6) of paths[p]) .. z8{left} .. {dir 50}z9;
dt = directiontime dir 270 of subpath( 6, 8) of paths[p];
paths[p] := insert_nodes(paths[p])(6 + dt );
dt := directiontime dir 90 of subpath( 8, 9) of paths[p];
paths[p] := insert_nodes(paths[p])(8 + dt);

paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(middle_down_nib rotated terminalangle 8 of paths[p] scaled 0.9)(8)
    nib(end_nib rotated terminalangle 9 of paths[p])(9)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "vc", point 4 of paths[0]);
anchor( "right", (xpart point 7.4 of paths[p], ypart point 7.5 of paths[p]));

endglyph;
