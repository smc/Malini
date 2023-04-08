input glyph;
beginglyph;
z0 = (x1 + mw/3, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2, y1);
z7 = (x6 - mw/4, y2);
z8 = (x7 - mw/4, y6);
paths[0] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6.. z7..{dir 60}z8;
z9 = point 5.66 of paths[p];
paths[p] := paths[0]{dir 60} .. z9;
% Shift to accommodate the below letter
paths[p]:=paths[p] yscaled 0.95 shifted (0, m*0.05);

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,4, 6)
   nib(top_nib)(5)
   nib(down_nib)(7)
   nib(middle_up_nib)(8)
   nib(top_nib)(9)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] = left_arch;

p:=p+1;
paths[p] := right_arch shifted (xpart(point infinity of paths[p-1]), 0);
paths[p-1] := paths[p-1] shifted (0.5mw, -m) xscaled 0.8 yscaled 0.7;
paths[p] := paths[p] shifted (0.5mw, -m) xscaled 0.8 yscaled 0.7;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p-1])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p-1])(strokes[p-1]);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

endglyph;
