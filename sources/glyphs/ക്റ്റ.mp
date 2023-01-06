input glyph;
beginglyph;
p:=0;
z0=(mw/2, 0.5m);
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, (y1 + y3)/2);
z3=(x2 - mw/3, y2 - m/2);
z4=(x3 - mw/3, y0);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x6 + mw/3, y6 + 0.3m);
z8=(x2  + mw/6, y7);
z9=(x8 + mw/3, (y8+ y10)/2);
z10=(x9 - mw/3, y5 );
paths[p] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9..z10;

paths[p] := paths[p] shifted (0, 0.05m ) yscaled 0.95;

pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib scaled 0.9)(6, 9)
   nib(thin_vertical_nib rotated 90)(7, 8)
   nib(end_nib rotated 90)(10)
   ignore_directions(1,2, 3, 6, 9)
)(paths[p])(strokes[p]);


p:=p+1;

% Ra
paths[p] = ra;
paths[p] := paths[p] shifted (0, -1.05m ) xscaled 0.75 yscaled 0.75;
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib  rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := paths[p-1] shifted (mw, 0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib  rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p]);


endglyph;
