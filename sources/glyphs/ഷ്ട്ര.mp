input glyph;
beginglyph;
p:=0;
paths[p] :=pa_mouth;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0,0);
z1=(x0 + mw*1.2, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[1] shifted ( point 4 of paths[p-1] + ( thick*0.5, thick*sind(45)/2) );

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

% ട്ര
clearxy;
p:=p+1;
z0 = (x4, 0.8m);
z1 = (x5, m);
z2 = (0, y3 + .275m);
z3 = (x5, y4 + .3m);
z4 = (x5 + mw/3, y5 + .2m);
z5 = (x2 + mw/3, 0);
z6 = (x2-mw/4, y3);
z7 = (x6 + mw/8, m);

paths[p] = z0..z1..z2..z3..z4..z5..z6..z7;

paths[p] := subpath(1.75, 6.75) of paths[p] shifted(m*1.4, -m*0.9) xscaled 0.8 yscaled 0.7;
pen_stroke(
    nib(thicknib)(1,3,5)
    nib(thinnib)(2,4)
    nib(terminalnib rotated terminalangle 0 of paths[3])(0)
    nib(terminalnib rotated terminalangle infinity of paths[3])(infinity)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);


endglyph;
