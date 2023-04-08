input glyph;
beginglyph;
paths[p] :=pa_mouth shifted (0, 0.4m-overshoot);

strokes[p] := va_mouth_stroke(paths[p]);
p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 1.25mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( point infinity of paths[p-1] + ( thick/4, thick*sind(45)/2) );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point infinity of paths[p-1] - (0, thick*sind(45)/2);
z1=(x0, y0+m/6);
z2=((x1+x3)/2, m-overshoot);
z3=(x0 - mw*0.8, y1);
z4=(x3,0);
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(xpart(point infinity of paths[p-1]), thick*sind(45)/2);
z1=(x0 + mw*1.2, y0);
paths[p]:= z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point infinity of paths[p-1]), 0) ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[p-1]);
anchor( "right", point 0 of paths[p] - (mw/5,0) );

endglyph;
