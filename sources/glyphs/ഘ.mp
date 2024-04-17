input glyph;
beginglyph;
paths[p] :=pa_mouth shifted (0, 0.4m-overshoot);

strokes[p] := pa_mouth_stroke(paths[p]);
p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 1.25mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( point infinity of paths[p-1] + ( thick/4, thick*thin_horizontal_nib_scale/2) );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;

p:=p+1;
clearxy;
z0=point infinity of paths[p-1] - (0, thick*thin_horizontal_nib_scale/2);
z1=(x0, y0 + m/6);
z2=((x1+x3)/2, m-overshoot);
z3=(x0 - mw*0.8, y0 + m/6);
z4=(x3, 0);
paths[p]:= z0---z1..z2{left}..z3---z4 ;
paths[p]:=harmonize(paths[p]);
pen_stroke(
    cut(middle_up_nib, 0)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(xpart(point infinity of paths[p-1]), thick*thin_horizontal_nib_scale/2);
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
anchor( "right", (xpart point 0 of paths[p] - u_drop_sign_radius, u_drop_sign_vshift) );

endglyph;
