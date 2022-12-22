input glyph;
beginglyph;
p:=0;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=(x0 + mw*1.2, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[1] shifted ( point infinity of paths[p-1] + (0, thick*sind(45)/2) );

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
z0=point infinity of paths[2]- (thin/2, 0);
z1=((x0+x2)/2, ypart(point 0.45 of paths[2]));
z2=(xpart(point 0.2 of paths[1]), ypart(point 0.75 of paths[2]));
z3=(x2 + mw/4, y0);
z4=(x3 + mw/4, 2/3m);
z5=(x4,  ypart(point 0  of paths[1]));
paths[p] = z0{down}..z1{left}..z2..z3..z4---z5;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(thick_vertical_nib)(4)
    nib(thick_vertical_nib)(5)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = (0.8mw, 0.8m);
z1 = ((x0+x2)/2, m);
z2 = (0, y1 - .3m);
z3 = (x2 + mw/3, (y2 + y5)/2);
z4 = (x3 + mw/8, y3);
z5 = (x0, y6 + .275m);
z6 = ((x5 + x7)/2, 0);
z7 = (x2 - thick/3, y1-y0);

paths[p] = z0..z1..z2..z3---z4..z5..z6..z7;
paths[p] := paths[p] shifted (mw*1.33, -0.95m) xscaled 0.8 yscaled 0.7;
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2,5)
   nib(thick_vertical_nib rotated 90)(3,4)
   nib(down_nib)(6)
   nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);


endglyph;
