input glyph;
beginglyph;
input ./glyphs/include/ത;

clearxy;
z0 = (xpart point 5.75 of paths[p], -0.75*descent); % ra sign starts
z9 = (xpart point 2.25 of paths[p],  y0); % ra sign starts
z10 = point 1 of paths[p] - (mw/3, 0);
z11 = (x10 + mw/8, m);

paths[p] := (subpath(0, 6.75) of paths[p]) .. z0---z9 ..z10{up}..z11;

paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(down_nib)(8,9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle infinity of paths[p])(11)
)(paths[p])(strokes[p]);

anchor( "vc", point 4 of paths[0]);
anchor( "right", point 7.75 of paths[0]);

endglyph;
