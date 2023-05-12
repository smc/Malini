input glyph;
beginglyph;

input ./glyphs/include/പ;


p:=p+1;
clearxy;
input ./glyphs/include/ത;

paths[p]:=paths[p] shifted (0.2mw, -1.1m) xscaled 0.8 yscaled 0.7;
pen_stroke(
    nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[0])(0)
    nib(top_nib scaled 0.8 )(2,6)
    nib(middle_down_nib scaled 0.8)(3, 7)
    nib(down_nib scaled 0.8 )(4)
    nib(middle_up_nib scaled 0.8 )(1,5)
    nib(end_nib scaled 0.8 rotated terminalangle 8 of paths[p])(8)
)(paths[p])(strokes[p]);

anchor( "vc", (x3,0));

endglyph;
