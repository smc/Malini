input glyph;
beginglyph;

paths[0] :=left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(thin_vertical_nib)(6,7,8)
)(paths[0])(strokes[0]);

% Second arch

paths[1] = middle_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[1])(strokes[1]);

paths[2] = right_arch shifted (xpart(point infinity of paths[1]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 120)(4)
)(paths[2])(strokes[2]);

xshift := 0.6mw;
yshift := -.85m;
paths[3] = paths[0] shifted (xshift , yshift) xscaled 0.8 yscaled 0.8;
paths[4] = paths[1] shifted (xshift , yshift) xscaled 0.8 yscaled 0.8;
paths[5] = paths[2] shifted (xshift , yshift) xscaled 0.8 yscaled 0.8;
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(thin_vertical_nib)(6,7,8)
)(paths[3])(strokes[3]);
pen_stroke(
      nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[4])(strokes[4]);
pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib  rotated 120)(4)
)(paths[5])(strokes[5]);
rbearing:=0;
endglyph;
