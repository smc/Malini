input glyph;
beginglyph;
p:=1;
clearxy;
z0=(mw/2, 0.5m);
z1=((x0 + x2)/1.96, m-overshoot);
z2=(x0 + 2/3mw, (y1 + y3)/2);
z3=(x1, undershoot);
z4=(x0, y0);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x6 + mw/3, y6 + 0.325m);
z8=(x2  + mw/6, y7);
z9=(x8 + mw/3.5, (y8 + y10)/2);
z10=(x9 - mw/4, (y8+ y12)/2);
z11=(x10 + mw/4, (y10 + y12)/2);
z12=(x11 - mw/2.5, y3);
paths[p] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9..{left}z10{right}..z11..{dir 160}z12;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib scaled 0.9)(6, 9, 11)
   nib(thin_vertical_nib rotated 90)(7, 8)
   nib(end_nib rotated 90)(10)
   nib(end_nib rotated terminalangle 12 of paths[p])(12)
)(paths[p])(strokes[p]);


p:=p-1;
clearxy;
z0=point 7 of paths[p+1];
z1=(0, 3/4m);
z2=(x1+mw/4, m);
z3=point 0 of paths[p+1];
paths[p] := z0{left}..z1.. z2..{down}z3;
pen_stroke(
   nib(thin_vertical_nib rotated 90)(0, 4)
   nib(middle_up_nib)(1)
   nib(top_nib)(2)
   nib(middle_up_nib)(3)
)(paths[p])(strokes[p]);


anchor( "vc", point 1 of paths[0]);

endglyph;
