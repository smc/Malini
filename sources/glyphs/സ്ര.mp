input glyph;
beginglyph;
p=0;
paths[p] = left_arch;
paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);
p:=p+1;
clearxy;
z0=point infinity of paths[p-1] + (thick/2-thin/2, undershoot);
z1=(x0, 0.6m);
z2=((x1+x3)/2, m - overshoot); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, 0.4m);
z5= ( x4+ mw/3, undershoot);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x2 + 3/4mw, m);

paths[p] = z0---z1..z2..z3---z4..z5{right}..z6{up}..z7;

pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point 6 of paths[p-1];
z1 = (xpart(point 4 of paths[1]), -descent*0.75 );
z2 = (xpart(point 2.25 of paths[p-2]), y1);
z3 = (xpart(point 1 of paths[p-2]) - mw/3, ypart(point 1 of paths[p-2]));
z4 = (x3 + mw/10, m);
paths[p] =  z0{dir (angle(direction 6 of paths[p-1]) + 180)}..{dir 190}z1..z2{dir 170}..z3{up}..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


anchor( "vc", (x3,0));
anchor( "right", point .6 of paths[2]);

endglyph;
