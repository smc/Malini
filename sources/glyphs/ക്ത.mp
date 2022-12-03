input glyph;
beginglyph;

z0=(mw/2, 0.5m);
z1=(x0 + mw/3, m-thick*0.8/4);
z2=(x1 + mw/3, (y1 + y3)/2);
z3=(x2 - mw/3, y2 - m/2 + thick*0.8/4);
z4=(x3 - mw/3, y0);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x5, y6 + 0.3m);
z8=(x2  + mw/3, y7);

paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(6)
   nib(middle_down_nib)(6)
   nib(thin_vertical_nib rotated 90)(7, 8)
)(paths[0])(strokes[0]);

clearxy;
z0= (x1 + mw/3, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, 0.975m); % top
z3 = ( x2 + mw/2, y1);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y1);
z8 = ( x7 - mw/3, y0); %
paths[1] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7..z8;
paths[1]:=paths[1] shifted (xpart(point infinity of paths[0]),0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(end_nib rotated 120)(8)
)(paths[1])(strokes[1]);

anchor( "vc", z1);
anchor( "bottom", (xpart(point 9.25 of paths[0]), 0));
anchor( "right", (xpart(point 9.25 of paths[0]), 0));

endglyph;
