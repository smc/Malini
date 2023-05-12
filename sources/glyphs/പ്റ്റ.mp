input glyph;
beginglyph;

input ./glyphs/include/പ;

p:=p+1;

% Ra
paths[p] = ra;
paths[p] := paths[p] shifted (0, -1.05m ) xscaled 0.7 yscaled 0.7;
pen_stroke(
   nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib scaled 0.8)(1)
    nib(top_nib scaled 0.8)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(end_nib scaled 0.8 rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := paths[p-1] shifted (0.9mw, 0);

pen_stroke(
    nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib scaled 0.8)(1)
    nib(top_nib scaled 0.8)(2)
    nib(middle_down_nib scaled 0.8)(3)
    nib(end_nib scaled 0.8 rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

rbearing:=0;

anchor( "vc", (xpart(point 2 of paths[0]),0));


endglyph;
