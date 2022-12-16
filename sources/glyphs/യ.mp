input glyph;

beginglyph;

z0 = (mw*0.6 , 0.6m);
z1 = (x0 + mw/3, m-thick*0.8/4);
z2 = (x1 + mw/4, y1 - m/2);
z3 = ((x2 + x4)/2, thick*0.6/2);
x2-x4 = mw*1.12;
z4 = (x4, y2);
z5 = (x4 + mw/3, y1);
z6 = (x0, y0);
z7 = (x6 + 0.05mw, m*0.4);
z8 = ((x7 + x9)/2, thick/4);
z9 = (x8 + mw/2, m/2);
z10 = (x9 - mw/4, y1);
paths[0] = z0{up}..z1..z2..z3..z4{dir 100}..z5..z6..z7..z8..z9{up}..z10;

pen_stroke(
   nib(middle_up_nib)(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(top_nib)(5)
   nib(middle_up_nib)(6)
   nib(middle_up_nib)(7)
   nib(down_nib)(8)
   nib(middle_up_nib)(9)
   nib(end_nib rotated terminalangle 10 of paths[0])(10)
   ignore_directions(1, 2, 3, 4,5,6,7, 8, 9)
)(paths[0])(strokes[0]);


anchor( "vc", (x1,0));
anchor( "bottom", point 8.25 of paths[0]);
anchor( "right", point 8.25 of paths[0]);


endglyph;
