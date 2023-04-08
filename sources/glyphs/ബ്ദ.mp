input glyph;
beginglyph;
input ./glyphs/include/ബ;


p:=p+1;
clearxy;
paths[p] := da shifted(mw*1.75, -0.95m) xscaled 0.8 yscaled 0.8;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib scaled 0.8 rotated 90)(4)
    nib(middle_down_nib scaled 0.8)(3, 5)
    nib(end_nib rotated 60)(6)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 5 of paths[0]),0));

endglyph;
