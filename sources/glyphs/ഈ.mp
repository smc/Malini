input glyph;
beginglyph;
clearxy;
z0 =(x4, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, m/6);
z4=(0, (y3+y5)/2.35 );
z5=((x4 + x6)/1.75, m-overshoot);
z6=(x4 + 0.85mw, 0.6m);
z7=(x6, m/6);
paths[0]:=z0{up}..z1{right}..z2{down}..z3{left}..z4{up}..z5..{down}z6 ---z7;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(top_nib)(5)
    nib(down_nib)(3)
    nib(middle_down_nib)(2)
    nib(middle_up_nib)(4)
    nib(thick_vertical_nib)(6,7)
)(paths[0])(strokes[0]);

clearxy;
z0=point 7 of paths[0] + (thick/2-thin/2, undershoot);
z1=(x0, 0.6m);
z2=((x1+x3)/2.06, ypart(point 5 of paths[0])); % Top of second arch
x3-x1 = mw*0.75;
z3=(x3, (y2+y4)/2);
z4= (x3-mw/2, 0);
z5= (xpart(point 1 of paths[0]), 0);
z6= (xpart(point 0 of paths[0]), (y5+y7)/2);
z7= (x5, -descent*0.75);
z8= (x3 + thick/2, y7);

paths[1] = z0---z1..z2..z3{down}..z4---z5..z6..z7---z8;
pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(down_nib)(5)
    nib(down_nib rotated 90)(6)
    nib(thick_vertical_nib rotated 90)(7,8)
)(paths[1])(strokes[1]);

clearxy;
z0 = (x1 + mw*0.1, 0.4m);
z1 = (0, (y0+y2)/2);
z2 = ((x1 + x3)/2, m-overshoot);
z3 = (x1 + mw*0.6, .6m);
z4 = (x3, .4m);

paths[2] = z0..z1{up}..z2{right}..{down}z3---z4 ;
paths[2] := paths[2] shifted (xpart(point infinity of paths[1]) + mw/4, 0);
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[2])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib scaled 0.9)(3, 4)
)(paths[2])(strokes[2]);

clearxy;
z0 =  point 4 of paths[2] + (thick*0.5/2, 0);
z1 = (x0, m*0.6);
z2 = ((x1 + x3)/2, m-overshoot);
z3 = (x1 + 0.66mw, (y2+y4)/1.75);
z4 = (x3 - 0.8mw, 0);


paths[3] =  z0 --- z1 ..z2{right}..z3{down}..{dir 175}z4;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 90)(4)
)(paths[3])(strokes[3]);


endglyph;
