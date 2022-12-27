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
z8=(x2 + mw/3, y7);
z9=(x8 + mw/2.5, y6);
z10=((x9+x11)/2, y3);
z11=(x2 + mw/4, y13);
z12=(x9, y1);
z13=(x12 + mw/2, m/3);

paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9{down}..z10{left}..z11..z12{dir 0}..{down}z13;
paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib scaled 0.9)(6, 9)
   nib(thin_vertical_nib rotated 90)(7, 8)
   nib(middle_down_nib)(9)
   nib(down_nib)(10)
   nib(middle_up_nib)(11)
   nib(top_nib)(12)
   nib(middle_down_nib)(13)
   ignore_directions(1,2, 3, 6, 9, 10, 11, 12)
)(paths[0])(strokes[0]);


p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = (xpart(point9 of paths[p-1]), -descent*0.75 );
z2 = (xpart(point 5 of paths[p-1]), y1);
z3 = (xpart(point 6 of paths[p-1]) - mw/3, ypart(point 6 of paths[p-1]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{dir angle(direction infinity of paths[p-1])}..{dir 190}z1..z2{dir 170}..z3..z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


anchor( "vc", point 1 of paths[0]);
anchor( "right", point 0.75 of paths[p]);

endglyph;
