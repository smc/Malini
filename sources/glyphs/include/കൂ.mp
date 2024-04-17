
clearxy;
z0=(mw/2, m/2);
z1=((x0 + x2)/2, m-overshoot);
z2=(x0 + 2/3mw, (y1 + y3)/2);
z3=(x1, undershoot);
z4=z0;
paths[p] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4;
paths[p]:=harmonize(paths[p]);

pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[p-1];
z1=(x0 - mw/4, undershoot);
z2=(x1 - mw/4, y1 + 0.25m);
z3=(x2 + mw/3, y2 + 0.3m);
z4=(xpart point 2 of paths[p-1] + mw/6, y3);
z5=(x4 + mw/3.5, (y4 + y6)/2);
z6=(x5 - mw/4, (y4+ y8)/2);
z7=(x6 + mw/3.75, (y6 + y8)/2);
z8=(x7 - mw/2.5, y1-m/6);
z9=(x3, y8);
z10=(x2, (y8+y11)/2);
z11=(x9, -descent);
z12=(x7+thick/2, y11);
paths[p] = z0{down}..z1{left}..z2{up}..z3---z4..z5{down}..{left}z6{right}..z7{down}..z8---z9..z10{down}..z11---z12;
paths[p]:=harmonize(paths[p]);
pen_stroke(
   nib(middle_up_nib)(0)
   nib(down_nib)(1)
   nib(middle_down_nib scaled 0.9)(2)
   nib(thin_vertical_nib rotated 90)(3, 4)
   nib(end_nib rotated 90)(6)
   nib(middle_down_nib scaled 0.9)(5, 7)
   nib(down_nib)(8)
   nib(down_nib)(9)
   nib(down_nib rotated 70)(10)
   nib(thick_horizontal_nib)(11,12)
)(paths[p])(strokes[p]);

