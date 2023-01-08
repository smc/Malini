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
z9 = (x8 + mw/2.1, (y8+y10)/1.8);
z10 = (x9 - mw/8, m);
paths[0] = z0{up}..z1{right}..z2 ..z3..z4{up}..z5{right}..z6{down}..z7..z8..z9{up}..z10;

pen_stroke(
   nib(middle_up_nib scaled 1.1)(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(top_nib scaled 1.2)(5)
   nib(middle_up_nib scaled 1.2)(6)
   nib(middle_up_nib scaled 1.2)(7)
   nib(down_nib)(8)
   nib(middle_up_nib)(9)
   nib(end_nib rotated terminalangle 10 of paths[0])(10)
)(paths[0])(strokes[0]);

anchor( "vc", (x1,0));
anchor( "bottom", point 8.25 of paths[0]);
anchor( "right", point 8.25 of paths[0]);

endglyph;
