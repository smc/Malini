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

paths[p] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6{up}..z7---z8;
paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib)(6)
   nib(thin_vertical_nib rotated 90)(7, 8)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p]:=subpath (0, 7) of tha shifted (xpart(point infinity of paths[0]),0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[1])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = (xpart(point 4 of paths[p-1]), -descent*0.75 );
z2 = (xpart(point 0 of paths[p-2]), y1);
z3 = (xpart(point 6 of paths[p-2]) - mw/3, ypart(point 6 of paths[p-2]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{dir angle(direction infinity of paths[p-1])}..z1---z2..z3..z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


anchor( "vc", point infinity of paths[p]);
anchor( "right", point 0.75 of paths[p]);

endglyph;
