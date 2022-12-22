input glyph;

beginglyph;
p=0;
z0 = (mw*0.6 , 0.6m);
z1 = (x0 + mw/3, m);
z2 = (x1 + mw/4, y1 - m/2);
z3 = ((x2 + x4)/2, thick*0.6/2);
x2-x4 = mw*1.12;
z4 = (x4, y2);
z5 = (x4 + mw/3, y1);
z6 = (x0, y0);
z7 = (x6 + 0.05mw, m*0.4);
z8 = ((x7 + x9)/2, thick/4);
z9 = (x8 + mw/2.1, m/2);
z10 = (x9 - mw/6, y1);
paths[p] = z0{up}..z1..z2..z3..z4{dir 100}..z5..z6..z7..z8..z9{up}..z10;

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
   nib(top_nib rotated -45)(10)
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

