input glyph;
beginglyph;
p:=0;
z0=(x1 + mw/6 , 0);
y2 - y1 = y2/1.6;
z1=(0, y1);
z2=((x1+x3)/2, 0.6m);
x3-x1 = mw*0.6;
z3=(x3, y1);
z4=(x3 - mw/6, 0);
paths[p] := z0..z1..z2..z3..z4;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=(x0 + mw*1.2, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[1] shifted ( point 4 of paths[p-1] + ( thick*0.5, (thick*0.60)/2) );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[2] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[2];
z1=((x0+x2)/2, ypart(point 0.4 of paths[2]));
z2=(xpart(point 0.2 of paths[1]), ypart(point 0.75 of paths[2]));
z3=(xpart(point 0.4 of paths[1]), y0);
z4=(x1,y1);
z5=(x4,  ypart(point 0  of paths[1]));
paths[p] = z0{down}..z1{left}..z2..z3{right}..z4---z5;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(thick_vertical_nib)(4)
    nib(thick_vertical_nib)(5)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);
anchor( "bottom",  point 1 of paths[1]);
anchor( "right", (xpart(point 1 of paths[1]) - mw/5,0));

endglyph;
