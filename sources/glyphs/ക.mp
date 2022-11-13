input glyph;
beginglyph;

z0=(mw/2, 0.5m);
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, y1 - m/2);
z3=(x2 - mw/3, y2 - m/2);
z4=(x3 - mw/3, y3 + 0.5m);
z5=(x4 - mw/4, 0);
z6=(x5 - mw/4, y5 + 0.2m);
z7=(x6 + mw/4, y6 + 0.3m);
z8=(x2 + mw/6, y7);
z9=(x8 + mw/4, y8 - 0.3m);
z10=(x9 - mw/3, 0);

paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5..z6..z7{dir 0} .. z8{dir 0}..z9..z10 ;
pen_stroke(
   nib(middle_up_nib)(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(top_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib rotated -45)(5)
   nib(middle_up_nib)(6)
   nib(thick_vertical_nib rotated 90)(7)
   nib(thick_vertical_nib rotated 90)(8)
   nib(middle_down_nib)(9)
   nib(end_nib rotated 120)(10)
)(paths[0])(strokes[0]);

anchor( "vc", z1);
anchor( "bottom", (xpart(point 9.5 of paths[0]), 0 ) );

endglyph;
