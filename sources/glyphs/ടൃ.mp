input glyph;
beginglyph;
p:=0;
z0 = (0.8mw, y1-0.15m);
z1 = ((x0+x2)/1.8, m-overshoot);
z2 = (0, (y1  + y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0, (y3+y5)/2);
z5 = ((x4 + x6)/2.2, 0);
z6 = (x2 - thick/3, y1-y0);

paths[p] = z0..z1..z2..z3..{dir -80}z4;

pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib scaled 0.9)(2)
   nib(middle_down_nib rotated 90)(3)
   nib(middle_down_nib rotated terminalangle 4 of paths[p])(4)

)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% ഋ sign
z0 = point infinity of paths[p-1];
z1 = (x0 - mw/2, -descent*0.75);
z2 = (x1 - mw/3, (y1+y3)/2);
z3 = (x1, y2+m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir angle(direction infinity of paths[p-1])}.. {left}z1..z2..z3..z4;
pen_stroke(
    nib(middle_down_nib rotated (angle(direction infinity of paths[p-1])+90))(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p]);
anchor( "right", (xpart(point 4.5 of paths[p]), ypart(point 5.5 of paths[0])));

endglyph;
