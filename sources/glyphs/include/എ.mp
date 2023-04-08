
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0=(0,0);
z1=(x0 + mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, 0.8m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=((x0  + x2)/2, -descent*0.8);
z2=(x0 - mw/1.8, (y1+y3)/2.5);
z3=(x0, m-overshoot);
z4=(x0 + mw/2, y2);
z5=(x4 - mw/4, y1);

paths[p]:= z0{down}..z1{left}..{up}z2..z3{right}..z4{down}..z5;
paths[p]:= paths[p] shifted (xpart(point 0 of paths[p-1]), 0);
pen_stroke(
    nib(middle_down_nib rotated -10)(0,4)
    nib(middle_down_nib)(4)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 5 of paths[p])(infinity)
)(paths[p])(strokes[p]);
