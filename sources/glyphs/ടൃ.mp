input glyph;
beginglyph;
down_nib_width = thick*contrast*down_nib_scale/2;
z0 = (0.75mw, y1-0.12m);
z1 = ((x0+x2)/2.2, m-overshoot);
z2 = (0, (y1  + y3)/2.05);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0-down_nib_width/2, y3/2);

paths[p] = z0..z1{left}..z2{down}..z3..{down}z4;

pen_stroke(
   nib(start_up_nib scaled 1.2 rotated terminalangle 0 of paths[p])(0)
   nib(top_nib rotated 30)(1)
   nib(middle_down_nib scaled 0.9)(2,4)
    nib(middle_down_nib rotated 60)(3)
   nib(middle_down_nib rotated terminalangle 4 of paths[p])(4)

)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% ഋ sign
z0 = point infinity of paths[p-1];
z1 = ((x0 +x2)/2, -descent*0.4);
z2 = (x0 - 0.75mw, (y1+y3)/2);
z3 = (x1, y2+m/5);
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir angle(direction infinity of paths[p-1])}.. z1..z2{up}..z3..z4;
pen_stroke(
    nib(middle_down_nib rotated (angle(direction infinity of paths[p-1])+90))(0)
    nib(down_nib)(1)
    nib(middle_up_nib scaled 1.2 rotated 20)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
    ignore_directions(1)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p-1]);

endglyph;
