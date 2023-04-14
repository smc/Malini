input glyph;
beginglyph;
input ./glyphs/include/left_arch;

p:=p+1;
clearxy;
paths[p]=subpath(0, 7) of right_tha_arch shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = ( xpart point 3 of paths[p-1], -m/8); %
z2 = ( xpart(point 0 of paths[0]), y1);
z3 = ( xpart(point 1 of paths[0]), (y2+y4)/2);
z4 = ( x2, -descent);
z5 = ( x0+thick, y4);
paths[p] = z0{down}..z1---z2..z3{down}..z4---z5;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(thick_horizontal_nib)(4, 5)
)(paths[p])(strokes[p]);
rbearing:=rbearing - thick;

anchor( "vc", point 0 of paths[1]);

endglyph;
