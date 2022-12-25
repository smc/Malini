input glyph;
beginglyph;
p:=0;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, thick*0.6/2);
z4=(x0, y0);
z5=(x4 + mw/2, m);
z6=(x5 + mw/2, m/2);
z7=(x6-mw/4, 0);
paths[p] = z0{dir 80}..z1..z2..z3..z4..z5..{down}z6..z7;

pen_stroke(
   nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
     nib(middle_down_nib )(6)
    nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0 = (x1 + thin, 0.5m);
z1 = (0, 0.75m);
z2 = (x1 + mw/4, m - thick*0.6/2);
z3 = (x2 + mw/4, .66m);
z4 = (x3, .4m);

paths[p] = z0..z1..z2{dir -8}..{down}z3---z4 ;
paths[p]:= paths[p] shifted (xpart(point 6 of paths[0]) + mw/4, 0);

pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 =  point 4 of paths[p-1] + (thick*0.5/2, 0);
z1 =  (x0, m*0.6);
z2 = (x1 + mw/3, m - thick*0.6/2);
z3 = (x2 + mw/4, m/2);
z4 = (x3 - 0.8mw, thick*0.6/2);

paths[p] = z0 --- z1 ..z2..z3..z4;

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
endglyph;
