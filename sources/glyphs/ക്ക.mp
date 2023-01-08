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
z8=(x2 + mw/3, y7);
z9=(x8 + mw/2.5, y6);
z10=((x9+x11)/2, y3);
z11=(x2 + mw/4, y13);
z12=((x11+x13)/2, y1);
z13=(x11 + 0.95mw, (y12+y14)/2);
z14=(x13 - mw/4, 0);

paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9{down}..z10{left}..z11..z12{right}..z13{down}..z14;

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
   nib(end_nib rotated terminalangle 14 of paths[0])(14)

)(paths[0])(strokes[0]);

anchor( "vc", point 1 of paths[0]);
anchor( "bottom", (xpart(point 9.5 of paths[0]), 0));

endglyph;
