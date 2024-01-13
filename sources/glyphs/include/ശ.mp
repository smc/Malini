clearxy;

save dt;
z0 = (mw/3 + mw/3.5, m);
z1 = (2/3mw, undershoot);
z2 = (x1 + mw/3.5, (y1+  y3)/2);
z3 = (x2+mw/2.5, m-overshoot);
z4 = (x3+mw/6, y1);

paths[p] = z0{dir 215}..z1{right}..z2{dir 95}..z3{right}.. {dir 180}z4;
dt = directiontime dir 270 of subpath( 0, 1) of paths[p];
paths[p] := insert_nodes(paths[p])(dt);
dt := directiontime dir 270 of subpath(4, 5) of paths[p];
paths[p] := insert_nodes(paths[p])(4 + dt );
z5 = (x4-mw/4, (y6+y4)/2);
z6 = point 4.6 of paths[p];
paths[p] := paths[p] .. z5.. {right}z6;
paths[p]:=harmonize(paths[p]);

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 rotated 30)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3)
   nib(top_nib rotated 10)(4)
   nib(middle_down_nib)(5)
   nib(down_nib rotated -20)(6)
   nib(middle_up_nib)(7)
   cut(top_nib, rel 90)(8)
)(paths[p])(strokes[p]);
