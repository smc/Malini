input glyph;
beginglyph;

input ./glyphs/include/ഷ.mp;

clearxy;
p:=p+1;
down_nib_width = thick*contrast*down_nib_scale/2;
z0 = (0.75mw, y1-0.12m);
z1 = ((x0+x2)/2.2, m-overshoot);
z2 = (0, (y1  + y3)/2.05);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0-down_nib_width/2, (y3+y5)/2);
z5 = (x3, undershoot);
z6 = (x2 - mw/3, y3);
z7 = (x6 + mw/6, m);

paths[p] =  z0..z1{left}..z2{down}..z3..z4{down}..z5{left}..z6..z7;
paths[p] := paths[p] shifted (mw/3, 0);
paths[p] := paths[p] shifted (0.95mw, -1.1m) xscaled 0.8 yscaled 0.8;
pen_stroke(
   nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
   nib(top_nib scaled 0.8)(1)
   nib(middle_down_nib scaled 0.8)(2,4)
   nib(middle_down_nib scaled 0.8 rotated 90 scaled 0.75)(3)
   nib(down_nib scaled 0.8 )(5)
   nib(middle_up_nib)(6)
   nib(end_nib scaled 0.8 rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);


endglyph;
