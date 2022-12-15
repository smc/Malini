input glyph;

beginglyph;
z0 =(x4, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, m/6);
z4=(0, y0 );
z5=(x4 + mw/2, 0.975m);
z6=(x5 + mw/2, m/2);
z7=(x5, 0);
z8=(x3, y7);
z9= (x0, (y8+y10)/2);
z10= (x8, -descent*0.75);
z11= (x6 + thick/2, y10);

paths[0]:=z0{up}..z1{right}..z2{down}..z3{left}..z4..z5..{down}z6..z7---z8..z9..z10---z11;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(top_nib)(5)
    nib(down_nib)(3)
    nib(middle_down_nib)(2)
    nib(middle_up_nib)(4)
    nib(middle_down_nib)(6)
    nib(down_nib)(7)
    nib(down_nib)(8)
    nib(middle_up_nib)(9)
    nib(thick_vertical_nib rotated 90)(10,11)
    ignore_directions(2, 3 , 5, 6, 9)
)(paths[0])(strokes[0]);

clearxy;
z0 = (x1 + mw/8, 0.5m);
z1 = (0, 0.75m);
z2 = (x1 + mw/4, m - thick*0.6/2);
z3 = (x2 + mw/4, .66m);
z4 = (x3, .4m);

paths[2] = z0..z1..z2{dir -8}..{down}z3---z4 ;
paths[2] := paths[2] shifted (xpart(point infinity of paths[0]) + mw/5, 0);
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[2])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[2])(strokes[2]);

clearxy;
z0 =  point 4 of paths[2] + (thick*0.5/2, 0);
z1 =  (x0, m*0.6);
z2 = (x1 + mw/3, m - thick*0.6/2);
z3 = (x2 + mw/4, m/2);
z4 = (x3 - 0.8mw, thick*0.6/2);

paths[3] = z0 --- z1 ..z2..z3..z4;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 90)(4)
)(paths[3])(strokes[3]);

endglyph;
