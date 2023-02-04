input glyph;
beginglyph;
p:=0;
z0 = (0.75mw, y1-0.1m);
z1 = ((x0+x2)/2.25, m-overshoot);
z2 = (0, (y1  + y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0, (y3+y5)/2);
z5 = (x3, undershoot);
z6 = (x2 - mw/3, y3);
z7 = (x6 + mw/6, m);

paths[p] =  z0..z1{left}..z2{down}..z3..z4{down}..z5{left}..z6..z7;
paths[p] := paths[p] shifted (mw/3, 0);

pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
   nib(top_nib)(1)
   nib(middle_down_nib scaled 0.9)(2,4)
   nib(middle_down_nib rotated 90)(3)
   nib(down_nib)(5)
   nib(middle_up_nib)(6)
   nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);


anchor( "vc", point 1 of paths[p]);
anchor( "right", point 4.5 of paths[p]);


endglyph;
