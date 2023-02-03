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
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

pen_stroke(
    cut(thin_horizontal_nib, 45)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, 0.8m);

paths[p]:= z0--z1;
paths[p]:= paths[2] shifted (xpart(point 1 of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    cut(thick_vertical_nib, 60)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart point infinity of strokes[2] - thin/2, m);
z1=((x0+x2)/2, ypart(point 0.55 of paths[2]));
z2=(xpart(point 0.2 of paths[1]), (y1+y3)/2);
z3=(x2 + mw/4, m-overshoot);
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
z0 = (0.8mw, 0.85m);
z1 = ((x0+x2)/1.8, m);
z2 = (0, (y1  + y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (x0, (y3+y5)/2);
z5 = ((x4 + x6)/2.2, 0);
z6 = (x2 - thick/3, y1-y0);

paths[p] = z0..z1..z2..z3..z4..z5..z6;
paths[p] := paths[p] shifted (mw*1.33, -0.95m) xscaled 0.8 yscaled 0.7;
pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib scaled 0.75)(2,4)
   nib(middle_down_nib rotated 90 scaled 0.75)(3)
   nib(down_nib)(5)
   nib(end_nib rotated terminalangle 6 of paths[p])(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);


endglyph;
