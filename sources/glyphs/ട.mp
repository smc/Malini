input glyph;
beginglyph;
p:=0;
z0 = (0.8mw, 0.85m);
z1 = ((x0+x2)/1.8, m);
z2 = (0, (y1  + y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0, (y3+y5)/2);
z5 = ((x4 + x6)/2.2, 0);
z6 = (x2 - thick/3, y1-y0);

paths[p] = z0..z1..z2..z3..z4..z5..z6;

pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib scaled 0.9)(2,4)
   nib(middle_down_nib rotated 90)(3)
   nib(down_nib)(5)
   nib(end_nib rotated terminalangle 6 of paths[0])(6)
   ignore_directions(2,3,4)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p]);
anchor( "right", (xpart(point 4.5 of paths[p]), ypart(point 5.5 of paths[0])));

endglyph;
