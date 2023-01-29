input glyph;
input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2.5, (y5+y7)/2);
z7 = (x6 - mw/3, 0);

paths[p] = z0{dir 215}..z1{down}..z2{right}..z3 --- z4..z5{right}.. z6{down}.. {dir 210}z7;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,4,6)
   nib(top_nib)(5)
   nib(end_nib rotated 120)(7)
)(paths[p])(strokes[p]);

p:=p+1;

paths[p]:=paths[p-1] shifted(0.45m, -m) xscaled 0.75 yscaled 0.7;
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib scaled 0.8)(3,6)
   nib(top_nib)(5)
   nib(end_nib rotated 120)(7)
)(paths[p])(strokes[p]);

anchor( "vc", point 4 of paths[0]);

endglyph;
