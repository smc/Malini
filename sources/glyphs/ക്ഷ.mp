input glyph;
beginglyph;
p:=0;
z0=(mw/2, m/2);
z1=((x0 + x2)/1.96, m-overshoot);
z2=(x0 + 2/3mw, (y1 + y3)/2);
z3=(x1, undershoot);
z4=(x0, y0);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x6 + mw/3, y6 + 0.3m);
z8=(x2  + mw/6, y7);
z9=(x8 + mw/4, y6);
z10=(x9 - mw/4, y5);
paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9{down}..z10;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(5)
   nib(middle_down_nib scaled 0.9)(6, 9)
   nib(thin_vertical_nib rotated 90)(7, 8)
   cut(end_nib rotated 45, 90)(infinity)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=(x0 + mw*1.2, y0);


paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart point infinity of paths[p-1] + thick/2, thick*sind(45)/2);

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, 0.8m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    cut(thick_vertical_nib, 60)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point infinity of strokes[2] - thin/2, m);
z1=((x0+x2)/2.2, ypart(point 0.55 of paths[2]));
z2=(xpart(point 0.2 of paths[1]), (y1+y3)/2);
z3=(x2 + mw/4, m-overshoot);
z4=(x3 + mw/4, 2/3m);
z5=(x4,  ypart(point 0  of paths[1]));
paths[p] = z0{down}..z1{left}..z2{up}..z3{right}..z4---z5;

pen_stroke(
    nib(thin_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(middle_down_nib)(4)
    nib(thick_vertical_nib)(5)
)(paths[p])(strokes[p]);


anchor( "vc", point 0.5 of paths[1]);
anchor( "right", (xpart(point 1 of paths[1]) - mw/5,0));

endglyph;
