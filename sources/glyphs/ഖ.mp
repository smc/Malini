input glyph;
beginglyph;
p:=0;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);
z5=(x0, m/2);
z6=(x5 + mw/3, m-overshoot);
z7=(x6 + mw/2, (y6+y8)/2);
z8=(x7, 0);
paths[0] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z4=(point 4 of paths[0]);
z5=(0, 0.4m);
z6=(x5 + mw/2, m-overshoot);
z7=(x6 + mw/2, m/2);
z8=(x7 - mw/4+ thin*1.2/2, thin/2);
z9=(x8, 0);
paths[1]= z4{up}..z5{up} ..z6{right}..{down}z7..z8--z9;
pen_stroke(
    nib(middle_up_nib rotated terminalangle 4 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4,5)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=  (0,0);
z1=(x0 + 0.6mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thin/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
z0=(0, 0);
z1=(x0, m);

paths[3]:= z0--z1;
paths[3]:= paths[3] shifted (xpart(point 1 of paths[2]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[3])(strokes[3]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "right", (xpart(point 1 of paths[2])-mw/5,0));

endglyph;
