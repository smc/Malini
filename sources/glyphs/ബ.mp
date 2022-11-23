input glyph;
beginglyph;

paths[0] := left_arch_with_eye;

paths[1] = right_arch shifted point infinity of paths[0];

pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(thin_vertical_nib)(7,8)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[1])(strokes[1]);

clearxy;
z0=  (0,0);
z1=(x0 + 0.7mw, y0);
z2=(x1, m);

paths[2]:= z0--z1 ;
paths[2]:= paths[2] shifted ( xpart(point 4 of paths[1]) +  thick*0.5, (thick*0.60)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[2])(strokes[2]);

clearxy;
z0=(0, 0);
z1=(x0, m);
paths[3] = z0--z1;
paths[3] := paths[3] shifted (xpart(point 1 of paths[2]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[3])(strokes[3]);

anchor( "vc", (xpart(point 5 of paths[0]),0));
anchor( "bottom", (xpart(point 1 of paths[2]),0));
anchor( "right", (xpart(point 1 of paths[2])-mw/5,0));
endglyph;
