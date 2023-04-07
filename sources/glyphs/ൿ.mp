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
z10=((x9+x11)/2, y5);
z11=(x2 + mw/4, m/2);
z12=(x11 + mw/3, 0.85(y10 + y13));
z13=(x12-mw/2, 0.9ascent);


paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9{down}..z10{left}..z11..z12{up}..{dir 225}z13;

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
   nib(middle_down_nib)(12)
   nib(end_nib scaled 2/3 rotated terminalangle infinity of paths[0])(infinity)

)(paths[0])(strokes[0]);

endglyph;
