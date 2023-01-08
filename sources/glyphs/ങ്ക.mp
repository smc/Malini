input glyph;
beginglyph;
p:=1;
z0=(mw/2, m/2);
z1=((x0 + x2)/1.96, m-overshoot);
z2=(x0 + 2/3mw, (y1 + y3)/2);
z3=(x1, undershoot);
z4=(x0, y0);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x6 + mw/3, y6 + 0.3m);
z8=(x2  + mw/6, y7);
z9=(x8 + mw/3, (y8+ y10)/2);
z10=(x9 - mw/3, y5 );
paths[p] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9..z10;
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
)(paths[p])(strokes[p]);

p:=p-1;
clearxy;
z0=point 7 of paths[p+1];
z1=(0, 3/4m);
z2=(x1+mw/4, m);
z3=point 0 of paths[p+1];
paths[p] := z0{left}..z1..z2..{down}z3;
pen_stroke(
   nib(thin_vertical_nib rotated 90)(0, 4)
   nib(middle_up_nib)(1)
   nib(top_nib)(2)
   nib(middle_up_nib)(3)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[p]);

endglyph;
