 input glyph;
beginglyph;
down_nib_width = thick*contrast*down_nib_scale/2;
z0 = (0.75mw, y1-0.12m);
z1 = ((x0+x2)/2.2, m-overshoot);
z2 = (0, (y1  + y3)/2.05);
z3 = ((x2 + x4)/2, (y2 + y4)/1.9);
z4 = (x0-down_nib_width/2, (y3+y5)/2);
z5 = ((x4 + x6)/1.8, undershoot);
z6 = (x2 - down_nib_width/2, y5+0.12m);

paths[p] = z0..z1{left} ..z2{down}..z3{right}..z4{down}..z5{left} ..z6;
paths[p]:=harmonize(paths[p]);
pen_stroke(
   nib(start_up_nib scaled 1.2 rotated terminalangle 0 of paths[p])(0)
   nib(top_nib rotated 30)(1)
   nib(middle_down_nib scaled 0.9)(2,4)
   nib(middle_down_nib rotated 60)(3)
   nib(down_nib rotated 0)(5)
   nib(end_nib scaled 1.2 rotated terminalangle 6 of paths[0])(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p]);
anchor( "right", (xpart(point 4.5 of paths[p]), ypart(point 5.5 of paths[0])));

endglyph;
