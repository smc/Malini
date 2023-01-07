input glyph;

beginglyph;
p=0;
z0 = (mw*0.6 , 0.6m);
z1 = (x0 + mw/3, m-overshoot);
z2 = (x1 + mw/3.5, (y1+y3)/1.65);
z3 = ((x2 + x4)/2, undershoot);
x2-x4 = mw*1.12;
z4 = (x4, (y3+y5)/1.8);
z5 = (x4 + mw/3, y1);
z6 = (x0, y0);
z7 = (x6 + 0.05mw, (y6+y8)/2);
z8 = ((x7 + x9)/2, undershoot);
z9 = (x8 + mw/2.1, (y8+y10)/1.8);
z10 = (x9 - mw/8, m);
paths[p] = z0{up}..z1{right}..z2 ..z3..z4{up}..z5{right}..z6{down}..z7..z8..z9{up}..z10;

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
)(paths[p])(strokes[p]);


% Shoe
clearxy;
p:=p+1;
z0 = point 8 of paths[0];
z1 = (x0 - mw/3, -descent*0.8);
z2 = (xpart(point 8.5 of paths[0]), y1) ;
paths[p] := z0{down}..z1--z2;
pen_stroke(
    nib(top_nib rotated 45)(0,1,2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[p-1] - (0, thick*0.5/2);
z1 = (xpart point 8.5 of paths[0], m/6);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

anchor( "vc", (x1,0));
anchor( "right", point 2 of paths[1]);

endglyph;

