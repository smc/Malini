input glyph;
beginglyph;

input ./glyphs/include/സ;

paths[2] := paths[0] shifted (0.56mw, -m) xscaled 0.8 yscaled 0.75 ;
paths[3] := paths[1] shifted (0.56mw, -m) xscaled 0.8 yscaled 0.75;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib scaled 0.8)(3)
    nib(thick_vertical_nib scaled 0.8)(4)
)(paths[2])(strokes[2]);
pen_stroke(
    cut(thin_vertical_nib scaled 0.8, -45)(0)
    nib(thin_vertical_nib scaled 0.8)(1)
    nib(top_nib  scaled 0.8)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(middle_down_nib scaled 0.8)(4)
    nib(down_nib  scaled 0.8)(5)
    nib(middle_up_nib  scaled 0.8)(6)
    nib(end_nib scaled 0.8 rotated terminalangle 7 of paths[3])(7)
)(paths[3])(strokes[3]);
anchor( "vc", z3);
anchor( "right", (point 5 of paths[3]));
endglyph;
