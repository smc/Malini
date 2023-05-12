input glyph;
beginglyph;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2, (y5+y7)/2.4);
z7 = (x6 - mw/4, y2);
z8 = (x7 - mw/4, y6);
paths[0] = z0{dir 215}..z1..z2..z3 --- z4..z5{right}.. z6.. z7..z8;
z9 = point 5.66 of paths[p];
paths[0] := z0{dir 215}..z1..z2..z3 --- z4..z5{right}.. z6.. z7..z8..z9;
% Shift to accommodate the below letter
paths[p]:=paths[p] yscaled 0.9 shifted (0, m*0.1);

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,4, 6)
   nib(top_nib)(5)
   nib(down_nib)(7)
   nib(middle_up_nib)(8)
   nib(end_nib rotated terminalangle 9 of paths[p])(9)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := paths[p-1]  shifted (0.35mw, -m) xscaled 0.8 yscaled 0.8;

pen_stroke(
   nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 0.8)(1)
   nib(down_nib scaled 0.8)(2)
   nib(middle_down_nib scaled 0.8)(3,4, 6)
   nib(top_nib scaled 0.8)(5)
   nib(down_nib scaled 0.8)(7)
   nib(middle_up_nib scaled 0.8)(8)
   nib(end_nib scaled 0.8 rotated terminalangle 9 of paths[p])(9)
)(paths[p])(strokes[p]);


endglyph;
