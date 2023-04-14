input glyph;
beginglyph;
paths[p] := left_arch;
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
z0=(thick/2-thin/2, thin/2);
z1=(x0, 0.6m);
z2=((x1+x3)/2.2, m-overshoot); % Top of arch
x3-x1 = 0.7*mw;
z3=(x3, (y2+y4)/1.86);
z4=(x3 - mw/3 + thin*1.2/2, thin/2);
z5=(x4, 0);
paths[p] = z0---z1..z2{right}..z3{down}..z4--z5;
paths[p] := paths[p] shifted point infinity of paths[p-1];

pen_stroke(
   cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4,5)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.7mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[2] shifted ( point infinity of paths[p-1] + (thin*1.2/2, thick*sind(45)/2) );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);
paths[p] = z0--z1;
paths[p] := paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0 = point 0 of paths[p-1];
z1 = (xpart(point 0.5 of paths[p-2]), -descent*0.8);
z2 = (xpart(point 2 of paths[0]), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, ypart(point 1 of paths[0]));
z4 = (x3 +mw/6, m);
paths[p] =  z0{down}..z1---z2..z3..z4;

pen_stroke(
    nib(middle_down_nib rotated -10)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 5 of paths[0]),0));
anchor( "right", point 0.5 of paths[p]);
endglyph;
