input glyph;
beginglyph;
input ./glyphs/include/സ;
p:=p+1;

% Ra
paths[p] = ra;
paths[p] := paths[p] shifted (mw/3, -m ) xscaled 0.8 yscaled 0.8;
pen_stroke(
   nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib scaled 0.8 )(1)
    nib(top_nib scaled 0.8 )(2)
    nib(middle_down_nib scaled 0.8 )(3)
    nib(end_nib  scaled 0.8  rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := paths[p-1] shifted (mw, 0);

pen_stroke(
    nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib scaled 0.8 )(1)
    nib(top_nib scaled 0.8 )(2)
    nib(middle_down_nib scaled 0.8 )(3)
    nib(end_nib  scaled 0.8 rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 3 of paths[0]);
anchor( "right", (point 4 of paths[p]));
endglyph;
