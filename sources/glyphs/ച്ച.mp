input glyph;
beginglyph;
clearxy;
z0=(0, thick*0.6/2);
z1=(x0 + 1.25mw, y0);
paths[1] := z0--z1;

clearxy;
z0=(x1 + mw/10, m/3);
z1=(mw/6, y0 + m/4);
z2=((x1 + x3)/2, 0.85m);
z3=(x0 + mw/2, y0 + m/6);
z4=(x0, thick*0.6/2);

paths[0] = z0{dir 135}..{up}z1..{right}z2..z3{dir -100} .. {dir 180}z4;

pen_stroke(
    nib(start_up_nib)(0  )
    nib(middle_up_nib)(1 )
    nib(top_nib)(2 )
    nib(middle_down_nib)(3 )
    nib(end_nib)(4)
)(paths[0])(strokes[0]);

pen_stroke(
    nib(thick_horizontal_nib)(0,1)
)(paths[1])(strokes[1]);

clearxy;
z0=(xpart(point infinity of paths[1]), 0);
z1=(x0, m);
paths[2] := z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[2])(strokes[2]);
% Shoe
clearxy;
z0 = point .5 of paths[1];
z1 = (x0 - mw/3, -descent*1.2) ;
z2 = (xpart(point 1 of paths[1]), y1) ;
z3 = point 1.6 of paths[1];
paths[3] := z0--z1--z2--z3;
pen_stroke(
    nib(thick_vertical_nib rotated -45 )(0,1,2)
    nib(thick_vertical_nib)(3)
)(paths[3])(strokes[3]);

anchor( "vc", point 2 of paths[0]);
anchor( "bottom", point 2 of paths[2]);
anchor( "right", point 2 of paths[2]);
endglyph;
