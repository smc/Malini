input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, thick*0.6/2);
z4=(x0, y0);
z5=(x0, m/2);
z6=(x5 + mw/3, 0.975m);
z7=(x6 + mw/2, m/2);
z8=(x7, 0);
paths[0] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)

)(paths[0])(strokes[0]);
clearxy;
z4=(point 3.8 of paths[0]);
z5=(0, m/2);
z6=(x5 + mw/2, 0.975m);
z7=(x6 + mw/2, m/2);
z8=(x7 - mw/4, 0);
paths[1]= z4..z5 ..z6..{down}z7..z8;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[1])(strokes[1]);

clearxy;
z0 = (x1 + mw/8, 0.5m);
z1 = (0, 0.75m);
z2 = (x1 + mw/4, m - thick*0.6/2);
z3 = (x2 + mw/4, .66m);
z4 = (x3, .4m);

paths[2] = z0..z1..z2{dir -8}..{down}z3---z4 ;
paths[2]:= paths[2] shifted ((point infinity of paths[1]) + (mw/2, 0));

pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
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
