input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y0-0.4m);



paths[p] = z0{dir 215}..z1..z2..z3 --- z4 ;
paths[p] :=paths[p] .. {right}subpath(2, infinity) of da shifted (mw/2, 0);

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 4)
   nib(top_nib)(5)
    nib(end_nib rotated 90)(9)
    nib(middle_down_nib scaled 0.9)(6,8)
    nib(end_nib rotated terminalangle 7 of paths[p])(7)

)(paths[p])(strokes[p]);


anchor( "vc", point 4 of paths[p]);
anchor( "right", (xpart(point 8.5 of paths[p]),0));
endglyph;
