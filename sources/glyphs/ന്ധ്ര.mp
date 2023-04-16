input glyph;
beginglyph;
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
z0=point infinity of paths[p-1] + (thick/2-thin/2, thin/2);
z1=(x0, 0.6m);
z2=((x1+x3)/2, m - overshoot); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, m/3);
z5= ( x4+ mw/3, undershoot);
z6= ( x5 + mw/4, m/3);

paths[p] = z0---z1..z2..z3---z4..z5..z6;

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)

)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
paths[p]=right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1])-thin/4, 0);

pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point 3.25 of paths[p-1];
z1 = (xpart(point 1.75 of paths[p-1]), -descent*0.8 );
z2 = (xpart(point 2 of paths[0]), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, ypart(point 1 of paths[p-2]));
z4 = (x3 + mw/10, m);
paths[p] =  z0{dir (angle(direction 3.25 of paths[p-1]))*-1}..z1---z2..z3..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
anchor( "right", point 0.75 of paths[p]);
endglyph;
