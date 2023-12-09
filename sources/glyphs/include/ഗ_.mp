
clearxy;
save dt;
z0 = (mw/3 + mw/3.5, m);
z1 = (2/3mw, undershoot);
z2 = (x1 + mw/3.5, (y1+  y3)/2);
z3 = (x2+mw/3.5, m-overshoot);
z4 = (x3+mw/3, 0.6m);
z5 = (x4, 0);
paths[p] = z0{dir 215}..z1{right}..z2{dir 95}..z3{right}.. z4--z5;
dt = directiontime dir 270 of subpath( 0, 1) of paths[p];
paths[p] := insert_nodes(paths[p])(dt);

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 rotated 30)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3)
   nib(top_nib)(4)
   nib(thick_vertical_nib)(5)
   nib(thick_vertical_nib)(6)
)(paths[p])(strokes[p]);