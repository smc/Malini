
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=(x0 + mw*1.2, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, 0.8m);

paths[p]:= z0--z1;
paths[p]:= paths[2] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    cut(thick_vertical_nib, 60)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point infinity of strokes[2] - thin/2, m);
z1=((x0+x2)/2.2, ypart(point 0.55 of paths[2]));
z2=(xpart(point 0.2 of paths[1]), (y1+y3)/2);
z3=(x2 + mw/4, m-overshoot);
z4=(x3 + mw/4, 2/3m);
z5=(x4,  ypart(point 0  of paths[1]));
paths[p] = z0{down}..z1{left}..z2{up}..z3{right}..z4---z5;
pen_stroke(
    nib(thin_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(middle_down_nib)(4)
    nib(thick_vertical_nib)(5)
)(paths[p])(strokes[p]);
