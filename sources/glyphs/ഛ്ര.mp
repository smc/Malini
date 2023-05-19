input glyph;
beginglyph;
clearxy;
z0=(x1 + 0.05mw, y2-m/2);
z1=(mw/3, (y0 + y2)/2);
z2=((x1 + x3)/2, 0.75m);
z3=(x2 + mw/3.25, 0.6y2);
z4=(x1, thick*sind(45)/2);

paths[p] = z0..z1..z2..z3..{left}z4 ;
paths[p] := paths[p] shifted (mw/3,0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0 )
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(mw/3, ypart(point infinity of paths[p-1]));
z1=(x0 + 1.5mw, y0);
paths[p] := z0--z1;

pen_stroke(
    nib(thin_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(x1 + mw/4,  ypart point infinity of paths[p-1])  ;
z1=(0, (y0 + y2)/2) + (xpart(point infinity of paths[p-1]) - mw/4, 0);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/2, y1);
z4=(x3 - mw/3, thick*0.5/2);
z5=(x4 - mw/4, y4 + m/3);
z6 = (x5 + mw/2, y5 + m/3);
z7 = (x6 + mw/2, (y6+y8)/2);
z8 = (x6, -descent*0.8);
z9 = (xpart point 1.5 of paths[0], y8);
z10 = (xpart point 0 of paths[1]-mw/4, ypart point 0 of paths[0]);
z11 = (x10+mw/6, m);

paths[p] = z0..z1..z2{right}..z3..z4..z5..z6{right}..z7..z8---z9..z10..z11;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(middle_down_nib)(7)
    nib(down_nib)(8,9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle infinity of paths[p])(11)
)(paths[p])(strokes[p]);

anchor( "vc", point 2 of paths[0]);
anchor( "right", point 7.75 of paths[p]);

endglyph;
