input glyph;
beginglyph;
z0=(mw/2, 0.5m);
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, y1 - m/2);
z3=(x2 - mw/3, y2 - m/2);
z4=(x3 - mw/3, y3 + 0.5m);
z5=(x4 - mw/4, y3);
z6=(x5 - mw/4, y5 + 0.25m);
z7=(x5, y6 + 0.3m);
z8=(x2  + mw/6, y7);
z9=(x8 + mw/4, y6);
z10=(x9 - mw/4, y5);
paths[0] := z0{up}..{right}z1..{down}z2..z3{left}..{up}z4{down}..z5{left}..z6..z7---z8..z9..z10;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(top_nib)(1)
   nib(middle_down_nib)(2)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
   nib(down_nib)(6)
   nib(middle_down_nib)(6, 9)
   nib(thin_vertical_nib rotated 90)(7, 8)
    nib(end_nib rotated 45)(infinity)
)(paths[0])(strokes[0]);

clearxy;
z0=(0,0);
z1=(x0 + mw*1.2, y0);
z2=(x1, m);

paths[1]:= z0--z1 ;
paths[1]:= paths[1] shifted ( xpart(point infinity of paths[0])  + thick/2, thick*0.6/2 );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[1])(strokes[1]);

clearxy;
z0=(0, 0);
z1=(x0, m);

paths[2]:= z0--z1;
paths[2]:= paths[2] shifted (xpart(point 1 of paths[1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[2])(strokes[2]);

clearxy;
z0=point infinity of paths[2];
z1=((x0+x2)/2, ypart(point 0.4 of paths[2]));
z2=(xpart(point 0.2 of paths[1]), ypart(point 0.75 of paths[2]));
z3=(xpart(point 0.4 of paths[1]), y0);
z4=(x1,y1);
z5=(x4,  ypart(point 0  of paths[1]));
paths[3] = z0{down}..z1{left}..z2..z3{right}..z4---z5;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(thick_vertical_nib)(4)
    nib(thick_vertical_nib)(5)
)(paths[3])(strokes[3]);

anchor( "vc", point 0.5 of paths[1]);
anchor( "right", (xpart(point 1 of paths[1]) - mw/5,0));

endglyph;
