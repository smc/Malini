input glyph;
beginglyph;

z0=(mw/2, m/2);
z1=((x0 + x2)/1.96, m-overshoot);
z2=(x0 + 2/3mw, (y1 + y3)/2);
z3=(x1, undershoot);
z4=(x0, y0);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x6 + mw/3, y6 + 0.3m);
z8=(x2  + mw/3, y7);

paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6{up}..z7---z8;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib)(6)
   nib(thin_vertical_nib rotated 90)(7, 8)
)(paths[0])(strokes[0]);

clearxy;
paths[1]:=tha shifted (xpart(point infinity of paths[0]),0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[1])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    cut(end_nib  rotated -45, rel 90)(8)
)(paths[1])(strokes[1]);

anchor( "vc", point infinity of paths[0]);
anchor( "right", (xpart(point 9.25 of paths[0]), 0));

endglyph;
