input glyph;
beginglyph;
input ./glyphs/include/ത;

clearxy;
z8 = (xpart point 5.75 of paths[p], -descent); % ra sign starts
z10 = point 1 of paths[p] - (mw/3, 0);
z11 = (x10 + mw/8, m);

paths[p] := (subpath(0, 7) of paths[p]) .. z8{left} ..z10{up}..z11;
paths[p] := insert_nodes(paths[p])(8.5);

paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(thick_horizontal_nib)(8)
    nib(thick_nib rotated terminalangle 9 of paths[p] scaled 0.8)(9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(3,5,7, 8,9, 10)
)(paths[p])(strokes[p]);

anchor( "vc", point 4 of paths[0]);
anchor( "right", (xpart point 7.4 of paths[p], ypart point 7.5 of paths[p]));

endglyph;
