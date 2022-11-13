input glyph;
beginglyph;

paths[0] = ra;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
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
z0=(0, 0)  ;
z1=(x0, m);

paths[2]:= z0--z1  ;
paths[2]:= paths[2] shifted (xpart(point 1 of paths[1]), 0) ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[2])(strokes[2]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", (xpart(point 1 of paths[1]),0));
anchor( "right", (xpart(point 1 of paths[1]),0));


endglyph;
