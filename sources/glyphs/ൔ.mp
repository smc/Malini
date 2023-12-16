input glyph;
beginglyph;
clearxy;
z0= (0, 0);
z1= (x0, m/2);
z2= (x1+ mw/2, m-overshoot);
z3= (x2+ mw/4 , y1);
z4= (x0, thick*thin_horizontal_nib_scale/2);

paths[p] = z0---z1..{right}z2..z3{dir -110}..{dir 200}z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib )(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 0 of paths[p-1] + (0, thick*thin_horizontal_nib_scale/2);
z1=(x0+ mw, y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thick_horizontal_nib)(0)
    nib(thick_horizontal_nib)(1)
)(paths[p])(strokes[p]);

% Chillu tail
clearxy;
p:=p+1;
z0= (xpart point 1 of paths[p-1], 0);
z1= (xpart point 3 of paths[p-2], (y0+y2)/1.6);
z2= (x0, ascent);

paths[p] = z0{up}..z1{up}..z2;
pen_stroke(
    nib(middle_down_nib rotated terminalangle 0 of paths[p]  )(0)
    nib(middle_up_nib )(1)
    nib(end_nib rotated terminalangle 2 of paths[p] )(2)
)(paths[p])(strokes[p]);

endglyph;
