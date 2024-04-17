input glyph;
beginglyph;
input ./glyphs/include/left_arch;

p:=p+1;
clearxy;
z0=(thick/2-thin/2, thin/2);
z1=(x0, 0.6m);
z2=((x1+x3)/2.2, m-overshoot); % Top of arch
x3-x1 = 0.7*mw;
z3=(x3, (y2+y4)/1.86);
z4=(x3 - mw/3 + thin*1.2/2, thin/2);
z5=(x4, 0);
paths[p] = z0---z1..z2{right}..z3{down}..z4--z5;
paths[p] := paths[p] shifted point infinity of paths[p-1];

pen_stroke(
   cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4,5)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(mw*1.3, y0);
paths[p]:= z0--z1 ;
paths[p]:=paths[p] shifted ( point infinity of paths[p-1] + (thin*1.2/2, thick*thin_horizontal_nib_scale/2) );
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), 0);
z1=(x0, m/2);
z2=((x1+x3)/2, m-overshoot);
z3=(x0 - mw*0.8, y1);
z4=(x3, ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

anchor( "right", (xpart point 1 of paths[p-1] - u_drop_sign_radius,u_drop_sign_vshift));
endglyph;
