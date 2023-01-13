input glyph;
beginglyph;
p=0;
paths[p] = left_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3,4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= (0, 0);
z1= (x0, m/2);
z2= (x1+ mw/2, m-overshoot);
z3= (x2+ mw/4 , y1);
z4= (x0, thick*sind(45)/2);

paths[p] = z0---z1..{right}z2..z3{dir -110}..{dir 200}z4;
paths[p] := paths[p]shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib )(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=point 0 of paths[p-1] + (0, thick*sind(45)/2);
z1=(x0+ 0.9mw, y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thick_horizontal_nib)(0)
    nib(thick_horizontal_nib)(1)
)(paths[p])(strokes[p]);

% Chillu tail
clearxy;
p:=p+1;
z0= (xpart point 1 of paths[p-1], 0);
z1= (x0, ypart point 2.5 of paths[p-2]);

paths[p] = z0{up}..z1 ;
pen_stroke(
    nib(thin_vertical_nib rotated terminalangle 0 of paths[p] )(0)
    nib(thin_vertical_nib rotated terminalangle 1 of paths[p] )(1)
)(paths[p])(strokes[p]);

endglyph;
