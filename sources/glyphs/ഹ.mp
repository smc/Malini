input glyph;
beginglyph;
p:=0;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[0];
z1=z0 + (mw*0.75,0);
z2=(x1 + mw*0.2, -thin*1.2/4);
paths[p] := z0--z1--z2;
paths[p] := paths[1] shifted (0, thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
    nib(end_nib scaled 0.5 rotated 90)(2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := ra shifted (xpart(point 1 of paths[p-1]) - mw/8, thin/2);

pen_stroke(
    nib(start_up_nib rotated 90)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
    ignore_directions(1, 2, 3)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);
anchor( "bottom",(xpart(point 3 of paths[2]), 0));
anchor( "right",  point infinity of paths[2]);
endglyph;
