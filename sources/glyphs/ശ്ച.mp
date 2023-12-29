input glyph;
beginglyph;

save dt;
z0 = (mw/3 + mw/3.5, m);
z1 = (2/3mw, undershoot);
z2 = (x1 + mw/3.5, (y1+  y3)/2);
z3 = (x2+mw/2.5, m-overshoot);
z4 = (x3+mw/6, m/3);

paths[p] = z0{dir 215}..z1{right}..z2{dir 95}..z3{right}.. {dir 180}z4;
dt = directiontime dir 270 of subpath( 0, 1) of paths[p];
paths[p] := insert_nodes(paths[p])(dt);
dt := directiontime dir 270 of subpath(4, 5) of paths[p];
paths[p] := insert_nodes(paths[p])(4 + dt );
z5 = (x4 - mw/4, (y6+y4)/2);
z6 = point 4.5 of paths[p];
z7 = (x6 + mw/2.5, y5);
z8 = (x6, thick/2);
paths[p] := paths[p] .. {up}z5.. {right}z6..z7..{dir 180}z8;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 rotated 30)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3)
   nib(top_nib rotated 10)(4)
   nib(middle_down_nib)(5)
   nib(down_nib rotated -20)(6)
   nib(middle_up_nib)(7)
   nib(top_nib)(8)
   nib(middle_down_nib)(9)
   cut(end_nib rotated 45, 90)(10)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0 + mw, y0);
paths[p] := z0--z1;
paths[p] := paths[p] shifted (xpart point 7.8 of paths[p-1], thick*thin_horizontal_nib_scale/2);
pen_stroke(
    nib(thin_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]), 0);
z1=(x0, m);
paths[p] := z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

anchor( "vc", point 9 of paths[0]);
anchor( "right", point 1 of paths[p-1] - (mw/5, 0) );

endglyph;
