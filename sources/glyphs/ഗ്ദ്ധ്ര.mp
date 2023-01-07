input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, undershoot);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y0-0.4m);



paths[p] = z0{dir 215}..z1..z2..z3 --- z4 ;
paths[p] := paths[p] shifted (mw/3,0);
paths[p] :=paths[p] .. {right}subpath(2, infinity) of da shifted (xpart point 1 of paths[0] + mw/2, 0);

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 4)
   nib(top_nib)(5)
    nib(end_nib rotated 90)(7)
    nib(middle_down_nib scaled 0.9)(6,8)
    nib(end_nib rotated terminalangle 9 of paths[p])(9)
   ignore_directions(1, 6)
)(paths[p])(strokes[p]);


% Connector
clearxy;
p:=p+1;
z0=point 8.5 of paths[0];
z1=(x0 + 0.5mw, 0.4m);
z2=(x1, m);
paths[1] = z0{right}..{up}z1---z2;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(thin_vertical_nib)(1)
    nib(thin_vertical_nib)(2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib rotated -45)(4)
)(paths[2])(strokes[2]);

p:=p+1;
clearxy;
z0 = point 3 of paths[p-1];
z1 = (xpart(point 1.75 of paths[p-1]), -descent*0.75 );
z2 = (xpart(point 2 of paths[p-3]), y1);
z3 = (xpart(point 1 of paths[p-3]) - mw/3, ypart(point 1 of paths[p-3]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{dir -80}..{dir 190}z1..z2{dir 170}..z3..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


anchor( "vc", point 5 of paths[0]);
anchor( "right", point 0.75 of paths[p]);
endglyph;
