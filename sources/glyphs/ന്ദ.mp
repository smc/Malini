input glyph;
beginglyph;
p:=0;
paths[p] = left_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p]:=right_da shifted (xpart(point infinity of paths[p-1]), 0) ;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated terminalangle 6 of paths[p])(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 0 of paths[p]);
anchor( "right", point 5.5 of paths[p]);

endglyph;
