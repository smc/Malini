
clearxy;
z0 = (x1 + mw/3.5, m);
z1 = (0, y0 - m/2);
z2 = ((x1 + x3)/2, undershoot);
z3 = (x1 + 0.66mw, 0.4m);
z4 = (x3, y5-0.45m);
z5 = ((x4 + x6)/2, m-overshoot);
z6 = (x3 + 0.75mw, (y5+y7)/2);
z7 = (x6 - mw/3.5, y2);
paths[p] = z0 ..z1..z2..z3..z4..z5.. z6.. z7;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib rotated -20)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3,4)
   nib(middle_down_nib)(6)
   nib(top_nib)(5)
   nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);