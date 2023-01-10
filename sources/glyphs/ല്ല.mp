input glyph;

beginglyph;

clearxy;
p=0;
clearxy;
z0=(0, 0.45m);
z1=(x0 + 0.75mw, y0);

paths[p] = z0 --z1 ;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[0]), ypart(point 1 of paths[0]) - thick*sind(45)/2);
z1=(x0, 0.6m);
z2=(xpart(point 0.5 of paths[0]), m-overshoot);
z3=(0, y1);
z4=(0, thick/2);

paths[p]:= z0{up}..z1{up}..{left}z2...z3---z4;
pen_stroke(
    nib(middle_up_nib )(0,1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3, 4)
    ignore_directions(2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(-thick/2, thick*sind(45)/2);
z1=(x0 + mw*1.4, y0);
paths[p]:= z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, thick/2);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point infinity of paths[2]) - thick/2, 0) ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);


paths[4] = la_sign;
pen_stroke(
    nib(middle_up_nib)(0,4, 9)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2,6,7)
    nib(down_nib)(3,8)
    nib(end_nib rotated terminalangle 10 of paths[4])(10)
)(paths[4])(strokes[4]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "right", point 8.5 of paths[4]);

endglyph;