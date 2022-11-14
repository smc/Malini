input glyph;
beginglyph;


paths[0] = subpath(0, 4) of ra;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[0])(strokes[0]);

clearxy;
z0=  (0,0);
z1=(x0 + 0.7mw, y0);
z2=(x1, m);

paths[1]:= z0--z1 ;
paths[1]:= paths[1] shifted ( xpart(point 4 of paths[0]), (thick*0.60)/2);

pen_stroke(
    nib(thick_horizontal_nib)(0)
    nib(thick_horizontal_nib)(1)
)(paths[1])(strokes[1]);

clearxy;
z0=(0, 0);
z1=(x0, m);

paths[2]:= z0--z1;
paths[2]:= paths[2] shifted (xpart(point 1 of paths[1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[2])(strokes[2]);

clearxy;
% ഋ sign
z0 = point 1 of paths[1];
z1 = (x0 - mw/2, -descent - thick);
z2 = (x1 - mw/3, -descent * .8);
z3 = (x0 - mw/4, -descent);
paths[3] = z0{down}..z1..z2{dir 75}..{dir -45}z3;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(end_nib rotated 90)(3)
)(paths[3])(strokes[3]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", (xpart(point 1 of paths[1]),0));
anchor( "right", (xpart(point 1 of paths[1]),0));


endglyph;
