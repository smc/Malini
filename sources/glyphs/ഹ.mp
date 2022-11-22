input glyph;
beginglyph;
z0=(x1 + mw/6 , 0);
y2 - y1 = y2/1.6;
z1=(0, y1);
z2=((x1+x3)/2, m/2);
x3-x1 = mw*0.5;
z3=(x3, y1);
z4=(x3 - mw/6, 0);
paths[0] := z0..z1..z2..z3..z4;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[0])(strokes[0]);

clearxy;
z0=point infinity of paths[0];
z1=z0 + (mw*0.75,0);
paths[1] := z0--z1;
paths[1] := paths[1] shifted (0, thick*0.6/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[1])(strokes[1]);
paths[2] = ra shifted (xpart(point infinity of paths[1])-mw/3, 0);

pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[2])(strokes[2]);

anchor( "vc", point 0.5 of paths[1]);
anchor( "bottom", point infinity of paths[1]);
anchor( "right", point infinity of paths[1]);
endglyph;
