input glyph;
beginglyph;
z0 = (x1 + mw*0.1, 0.4m);
z1 = (0, 0.75m);
z2 = (x1 + mw/3, m-overshoot);
z3 = (x2 + mw/4, .6m);
z4 = (x3, .4m);

paths[0] = z0..z1..z2{dir -8}..{down}z3---z4 ;
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib scaled 0.9)(3,4)
)(paths[0])(strokes[0]);

clearxy;
z0 = point 4 of paths[0] + (thick*0.5/2, 0);
z1 = (x0, m*0.6);
z2 = (x1 + mw/3, m-overshoot);
z3 = (x2 + mw/3, m/2);
z4 = (x3 - 0.8mw, 0);

paths[1] = z0 --- z1 ..z2..z3..z4;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[1])(4)
)(paths[1])(strokes[1]);

endglyph;
