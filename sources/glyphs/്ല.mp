input glyph;

beginglyph;
p:=0;
paths[p] = la_sign;
pen_stroke(
    nib(middle_up_nib)(0,4, 9)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2,6,7)
    nib(down_nib)(3,8)
    nib(top_nib rotated -45)(10)
)(paths[p])(strokes[p]);

anchor( "bottom", (xpart(point 8.5 of paths[0]),0));
anchor( "right", point 8.5 of paths[0]);
endglyph;