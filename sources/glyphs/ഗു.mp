input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/3, y1);
z7 = (x6 - mw/2, -m/8);
z8 = ( x2, y7);
z9 = ( x1, (y8+y10)/2);
z10 = ( x8, -descent);
z11 = ( x6+thick/2, y10);
paths[p] = z0{dir 215}..z1{down}..z2{right}..z3 --- z4..z5{right}.. z6{down}..z7---z8..z9..z10---z11;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,4, 6)
   nib(top_nib)(5)
     nib(down_nib)(7)
    nib(down_nib)(8)
    nib(middle_up_nib)(10)
   nib(thick_horizontal_nib)(10,11)
)(paths[p])(strokes[p]);
anchor( "vc", point 4 of paths[p]);
endglyph;
