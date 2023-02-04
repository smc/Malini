input glyph;
beginglyph;
p:=0;
paths[p] = left_tha_arch  shifted (mw/3,0);;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(thick_vertical_nib)(7)
    nib(thick_vertical_nib)(8)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
paths[p] = subpath(0, 7) of right_tha_arch shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = (xpart(point 4 of paths[1]), -descent*0.75 );
z2 = (xpart(point 2 of paths[p-2]), y1);
z3 = (xpart(point 1 of paths[p-2]) - mw/3, ypart(point 1 of paths[p-2]));
z4 = (x3 + mw/4, m);
paths[p] =  z0{dir angle(direction infinity of paths[p-1])}..z1---z2..z3{up}..z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


rbearing:=rbearing - thick;

anchor( "vc", (xpart(point infinity of paths[0]),0));
endglyph;
