
input ./glyphs/include/left_arch_with_eye;

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
z0=  (0,0);
z1=(x0 + 0.7mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of strokes[p-1])+thick/4, thick*thin_horizontal_nib_scale/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    cut(thin_horizontal_nib, 135)(1)
)(paths[p])(strokes[p]);

strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;

p:=p+1;
clearxy;
z0=(xpart point 1 of strokes[p-1] - thick/2, thick*tand(45)/2);
z1=(x0, m);
paths[p] = z0--z1;

pen_stroke(
    cut(thick_vertical_nib, -45)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);


% Clean joint
strokes[p] :=  subpath(0,2) of strokes[p]
    -- (xpart point 2 of strokes[p], ypart  point 2 of strokes[p-1])
    --cycle;