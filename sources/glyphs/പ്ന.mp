input glyph;
beginglyph;

input ./glyphs/include/പ;

% ന
p:=p+1;
clearxy;
paths[p] = left_arch;
p:=p+1;
paths[p] = right_arch shifted (xpart(point infinity of paths[p-1]), 0);
paths[p-1] := paths[p-1] shifted(0.43m, -1.1m) xscaled 0.7 yscaled 0.6;
paths[p] := paths[p] shifted(0.4m, -1.1m) xscaled 0.7 yscaled 0.6;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p-1])(strokes[p-1]);
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;
