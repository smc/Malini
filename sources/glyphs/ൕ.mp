input glyph;

beginglyph;

z0 = (mw*0.5 , 0.6m);
z1 = (x0 + mw/3, m-overshoot);
z2 = (x1 + mw/3.5, (y1+y3)/1.65);
z3 = ((x2 + x4)/2, undershoot);
x2-x4 = mw*1.2;
z4 = (x4, (y3+y5)/1.8);
z5 = ((x4 + x6)/2, y1);
z6 = (x0, y0);
z7 = (x6 + 0.05mw, (y6+y8)/2);
z8 = ((x7 + x9)/2, undershoot);
z9 = (x8 + mw/2, m/2);
z10 = (x9 - mw/6, (y9 + y11)/2);
z11 = (x10 + mw/4, 0.9ascent);
paths[0] = z0{up}..z1{right}..z2..z3..z4{up}..z5{right}..z6{down}..z7..z8..z9{up}..z10..z11;

pen_stroke(
   nib(middle_down_nib scaled 0.9)(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(top_nib)(5)
   nib(middle_down_nib scaled 0.9)(6)
   nib(middle_down_nib)(7)
   nib(down_nib)(8)
   nib(middle_up_nib scaled 1.2)(9)
   nib(middle_up_nib)(10)
   nib(end_nib scaled 2/3 rotated terminalangle infinity of paths[p])(11)
   ignore_directions(1r, 2r, 3r,4, 5r, 8 )
)(paths[0])(strokes[0]);

rbearing:=0;

endglyph;
