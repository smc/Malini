input glyph;
beginglyph;
p:=0;
clearxy;
z0=(x1 + mw/15, y2-m/2.4);
z1=(mw/3, (y0 + y2)/2.2);
z2=((x1 + x3)/2, 0.8m);
z3=(x2 + mw/3.25, 0.6y2);
z4=(x1, thick*sind(45)/2);

paths[0] = z0..z1..z2..z3..{left}z4 ;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0 )
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, ypart(point infinity of paths[p-1]));
z1=(x0 + 1.5mw, y0);
paths[p] := z0--z1;

pen_stroke(
    nib(thin_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(x1 + mw/4, ypart point infinity of paths[p-1]);
z1=(0, (y0 + y2)/2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/2, y1);
z4=(x3 - mw/3, thick*0.5/2);
z5=(x4 - mw/4, y4 + m/3);

paths[p] = z0..z1..z2{right}..z3..z4..{dir 90}z5;
z6 = point 2.6 of paths[p];
paths[p] := paths[p]..{right}z6 ;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]) - mw/4, 0);
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 2 of paths[0]);

lbearing:=0;
endglyph;
