input glyph;
beginglyph;
z0 = (x1 + mw/3, m);
z1 = (0, y0 - m/2);
z2 = ((x1 + x3)/2, undershoot);
z3 = (x1 + 0.66mw, 0.4m);
z4 = (x3-0.00mw, y5-0.45m);
z5 = ((x4 + x6)/2, m-overshoot);
z6 = (x3 + 0.95mw, (y5+y7)/2);
z7 = (x6 - mw/3, y2);
z8 = (x7 - mw/4, y6);
paths[p] = z0 ..z1..z2..z3..z4..z5.. z6.. z7..z8;
z9 = point 5.75 of paths[p];
y8 := (y6+y8)/2;
paths[p] := z0 ..z1..z2..z3--- z4..z5.. z6.. z7..z8..z9;
paths[p] := paths[p] shifted (mw/3,0);

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib rotated -20)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3,4)
   nib(middle_down_nib)(6)
   nib(top_nib)(5)
   nib(down_nib)(7)
   nib(middle_up_nib)(8)
   nib(top_nib)(9)
   ignore_directions(1, 2,3,4, 5, 7)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0 = point infinity of paths[p-1];
z1 = (x0 + mw/2, (y0+y2)/1.5);
z2 = (xpart point 7 of paths[p-1],  reph_sign_depth);
z3 = (xpart point 3 of paths[p-1], y2);
z4 = (xpart point 1 of paths[p-1] -mw/3, ypart point 1 of paths[p-1]);
z5 = (x4+mw/6, ypart point 0 of paths[p-1]);
paths[p] =  z0{right}..z1{down}..z2---z3..z4..z5;
paths[p] := insert_nodes(paths[p])(3.5);
pen_stroke(
   nib(top_nib)(0)
   nib(middle_down_nib)(1)
   nib(thick_horizontal_nib)(2,3)
   nib(thick_nib rotated terminalangle 4 of paths[p] scaled 0.8)(4)
   nib(middle_up_nib scaled 1.1)(5)
   nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "right", (xpart point 10.4 of paths[p], ypart point 10.5 of paths[p]));
endglyph;
