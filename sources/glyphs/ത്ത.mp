input glyph;
beginglyph;
p:=0;
paths[p] = left_tha_arch;
pen_stroke(
    nib(start_up_nib)(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(thin_vertical_nib)(7)
    nib(thin_vertical_nib)(8)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
paths[1] = right_tha_arch shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib)(8)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point infinity of paths[0]),0));
endglyph;
