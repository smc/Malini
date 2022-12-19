input glyph;
beginglyph;
p:=0;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

clearxy;
z0=point infinity of paths[0];
z1=z0 + (mw*0.75,0);
paths[1] := z0--z1;
paths[1] := paths[1] shifted (0, thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[1])(strokes[1]);
paths[2] = ra shifted (xpart(point infinity of paths[1]) - mw/5,0);

pen_stroke(
    nib(start_up_nib rotated -45 scaled 2)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated -45)(4)
)(paths[2])(strokes[2]);

anchor( "vc", point 0.5 of paths[1]);
anchor( "bottom",(xpart(point 3 of paths[2]), 0));
anchor( "right",  point infinity of paths[2]);
endglyph;
