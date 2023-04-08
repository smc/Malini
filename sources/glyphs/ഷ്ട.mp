input glyph;
beginglyph;

input ./glyphs/include/ഷ.mp;

clearxy;
p:=p+1;
z0 = (0.8mw, 0.85m);
z1 = ((x0+x2)/1.8, m);
z2 = (0, (y1  + y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0, (y3+y5)/2);
z5 = ((x4 + x6)/2.2, 0);
z6 = (x2 - thick/3, y1-y0);

paths[p] = z0..z1..z2..z3..z4..z5..z6;
paths[p] := paths[p] shifted (mw*1.33, -0.95m) xscaled 0.8 yscaled 0.7;
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib scaled 0.75)(2,4)
   nib(middle_down_nib rotated 90 scaled 0.75)(3)
   nib(down_nib)(5)
   nib(end_nib rotated terminalangle 6 of paths[p])(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);


endglyph;
