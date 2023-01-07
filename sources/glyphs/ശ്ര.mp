input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2, y1);
z7 = (x6 - mw/4, y2);
z8 = (x7 - mw/4, y6);
z9 = (x8 + mw/2, y6+m/3);
z10 = (x9 + mw/2, (y9+y11)/2);
z11 = (x10 - mw/2, -descent*0.75);
z12 = (x2, y11);
z13 = (x1-mw/3, y1);
z14 = (x13+mw/6, y0);
paths[p] = z0{dir 215}..z1..z2..z3 --- z4..z5{right}.. z6.. z7..{dir 70}z8..z9{right}..z10{down}..z11{dir 190}..{dir 170}z12..z13{up}..z14;
paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,4, 6)
   nib(top_nib)(5)
   nib(down_nib)(7)
   nib(middle_up_nib)(8, 13)
   nib(top_nib)(9)
   nib(middle_down_nib)(10)
   nib(down_nib)(11,12)
   nib(end_nib rotated terminalangle 14 of paths[p])(14)
)(paths[p])(strokes[p]);

anchor( "right", point 10.75 of paths[0]);
endglyph;
