
clearxy;
z0=(0, 0.45m);
z1=(x0 + 0.75mw, y0);

paths[p] = z0 --z1 ;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[0]), ypart(point 1 of paths[0]) - thick*sind(45)/2);
z1=(x0, 0.6m);
z2=(xpart(point 0.5 of paths[0]), m-overshoot);
z3=(0, y1);
z4=(0, thick*tand(20)/2);

paths[p]:= z0{up}..z1{up}..{left}z2...z3---z4;
pen_stroke(
    nib(middle_up_nib rotated 10)(0)
    nib(middle_up_nib )(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    cut(thick_vertical_nib, 20)(4)

)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, thick*sind(45)/2);
z1=(x0 + mw*1.4, y0);
paths[p]:= z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    cut(thin_horizontal_nib, 135)(1)
)(paths[p])(strokes[p]);


% Clean joint
strokes[p] :=  point 4 of strokes[p-1]
    -- subpath(1,3) of strokes[p]
    --cycle;

clearxy;
p:=p+1;
z0=(xpart point 1 of strokes[p-1] - thick/2, thick*tand(45)/2);
z1=(x0, m);

paths[p]:= z0--z1;

pen_stroke(
    cut(thick_vertical_nib, -45)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

% Clean joint
strokes[p] :=  subpath(0,2) of strokes[p]
    -- (xpart point 2 of strokes[p], ypart  point 2 of strokes[p-1])
    --cycle;