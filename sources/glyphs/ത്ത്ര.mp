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
z0=(thick*(1 - sind(50)), 0) + (xpart(point infinity of paths[p-1]), 0);
z1= (x0, m*0.6);
z2 = ( x1 + mw/2.75, m - overshoot); % top
z3 = ( x2 + mw/2, y1);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y1);

paths[p] = z0---z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7;

pen_stroke(
    nib(thin_vertical_nib)(0)
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
paths[p] =  z0{dir angle(direction infinity of paths[p-1])}..{dir 190}z1..z2{dir 170}..z3..z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


rbearing:=rbearing - thick;

anchor( "vc", (xpart(point infinity of paths[0]),0));
endglyph;
