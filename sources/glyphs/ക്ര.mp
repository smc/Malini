input glyph;
beginglyph;

z0=(mw/2, 0.5m);
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, y1 - m/2);
z3=(x2 - mw/3, y2 - m/2);
z4=(x3 - mw/3, y3 + 0.5m);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x5, y6 + 0.3m);
z8=(x2 + mw/6, y7);
z9=(x8 + mw/3, (y8 + y10)/1.2);
z10=((x9 + x11)/1.75, -descent*0.75);
z11=(x6 - mw/3, (y10 + y12)/2);
z12=(x11 + mw/4, y1);

paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9{down}..z10{dir 190}..z11..z12;
paths[0] := paths[0] shifted (mw/3, 0);
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib scaled 0.9)(6, 9)
   nib(thin_vertical_nib rotated 90)(7, 8)
   nib(down_nib)(10)
   nib(middle_up_nib)(11)
   nib(end_nib rotated terminalangle 12 of paths[0])(12)
   ignore_directions(1,2, 3, 6, 9, 10)
)(paths[0])(strokes[0]);

anchor( "vc", point 1 of paths[0]);
anchor( "bottom", point 9.5 of paths[0]);
anchor( "right", point 9.5 of paths[0]);

endglyph;
