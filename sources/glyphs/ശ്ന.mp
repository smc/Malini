input glyph;
beginglyph;
input ./glyphs/include/ശ;

clearxy;
p:=p+1;
input ./glyphs/include/left_arch;

p:=p+1;
input ./glyphs/include/right_arch;

paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
paths[p-1] := paths[p-1] shifted (mw, -1.05m) xscaled 0.8 yscaled 0.7;
paths[p] := paths[p] shifted (mw, -1.05m) xscaled 0.8 yscaled 0.7;

pen_stroke(
    nib(start_up_nib  scaled 0.8 rotated terminalangle 0 of paths[p-1])(0)
    nib(middle_up_nib  scaled 0.8)(1)
    nib(top_nib  scaled 0.8)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(thick_vertical_nib scaled 0.8)(4)
)(paths[p-1])(strokes[p-1]);

pen_stroke(
    cut(middle_up_nib scaled 0.8, -45)(0)
    nib(middle_up_nib scaled 0.8)(1)
    nib(top_nib  scaled 0.8)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(end_nib  scaled 0.8 rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

endglyph;
