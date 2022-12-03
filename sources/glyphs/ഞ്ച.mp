input glyph;
beginglyph;

paths[0] := left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib scaled 0.6)(0)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(thin_vertical_nib)(6,7,8)
)(paths[0])(strokes[0]);

paths[1] := right_tha_arch shifted (xpart(point infinity of paths[0]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib)(8)
)(paths[1])(strokes[1]);

clearxy;
z0=  (0,0);
z1=(x0 + 0.7mw, y0);
z2=(x1, m);

paths[2]:= z0--z1 ;
paths[2]:= paths[2] shifted ( xpart(point 8 of paths[1]) +  thick*0.5, thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[2])(strokes[2]);

clearxy;
z0=(0, 0);
z1=(x0, m);

paths[3]:= z0--z1;
paths[3]:= paths[3] shifted (xpart(point 1 of paths[2]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[3])(strokes[3]);
anchor( "vc", (xpart(point 4 of paths[1]),0));
anchor( "bottom", (xpart(point 1 of paths[2]),0));
anchor( "right", (xpart(point 1 of paths[2])-mw/5,0));

endglyph;
