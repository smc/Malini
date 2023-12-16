
z0=(x1 + mw/15, y2-m/2.4);
z1=(mw/3, (y0 + y2)/2.2);
z2=((x1 + x3)/2, 0.75m);
z3=(x2 + mw/3.25, 0.6y2);
z4=(x1, thick*thin_horizontal_nib_scale/2);

paths[0] = z0..z1..z2..z3..{left}z4 ;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0 )
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, thick*thin_horizontal_nib_scale/2);
z1=(x0 + 1.5mw, y0);
paths[p] := z0--z1;

pen_stroke(
    nib(thin_horizontal_nib)(0)
    cut(thin_horizontal_nib, 135)(1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(xpart(point 1 of strokes[p-1])- thick/2,  thick*tand(45)/2);
z1=(x0, m);
paths[p] := z0--z1;

pen_stroke(
    cut(thick_vertical_nib, -45)(0)
      nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

% Clean joint
strokes[p] :=  subpath(0,2) of strokes[p]
    -- (xpart point 2 of strokes[p], ypart  point 2 of strokes[p-1])
    --cycle;