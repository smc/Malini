input glyph;
beginglyph;

input ./glyphs/include/പ;
p:=p+1;
clearxy;
paths[p] = vocalic_r_sign shifted (xpart point infinity of paths[p-1], 0);
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 2 of paths[0]),0));

endglyph;
