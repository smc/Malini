
clearxy;
z0 = (x1 + mw/3.5, m);
z1 = (0, (y0+y2)/2.25);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, (y2+y5)*0.4);
z4 = (x3, (y2+y5)*0.6);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2.5, (y4+y6)/2.25);
z7 = (x6 - mw/3, 0);
paths[p] = z0{dir 215}..z1{down}..z2{right}..z3---z4..z5{right}.. z6{down}.. {dir 210}z7;


pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 4, 6)
   nib(top_nib)(5)
   nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);