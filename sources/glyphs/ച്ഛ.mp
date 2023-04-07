input glyph;
beginglyph;
p:=0;
clearxy;

z0=(x1 + mw/15, y2-m/2.4);
z1=(mw/3, (y0 + y2)/2.2);
z2=((x1 + x3)/2, 0.8m);
z3=(x2 + mw/3.25, 0.6y2);
z4=(x1, thick*sind(45)/2);

paths[0] = z0..z1{up}..z2{right}..z3{down}..{left}z4 ;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0 )
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, thick*sind(45)/2);
z1=(x0 + 1.5mw, y0);
paths[p] := z0--z1;

pen_stroke(
    nib(thin_horizontal_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart(point infinity of paths[1]), 0);
z1=(x0, m);
paths[p] := z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% ഛ
clearxy;
p:=p+1;
z0=(x1 + mw/15, y2-m/2.4);
z1=(mw/3, (y0 + y2)/2.2);
z2=((x1 + x3)/2, 0.8m);
z3=(x2 + mw/3.25, 0.6y2);
z4=(x1, thick*sind(45)/2);

paths[p]  = z0..z1{up}..z2{right}..z3{down}..{left}z4 ;

p:=p+1;
clearxy;
z0=(0, thick*sind(45)/2);
z1=(x0 + 1.5mw, y0);
paths[p] := z0--z1;


clearxy;
p:=p+1;
z0=(x1 + mw/4, thick/4);
z1=(0, (y0 + y2)/2);
z2=(x1 + mw/2, 0.9m);
z3=(x2 + mw/2, y1);
z4=(x3 - mw/3, y0+undershoot);
z5=(x4 - mw/4, y4 + m/3);

paths[p] = z0..z1{up}..z2{right}..z3{down}..z4{left}..{dir 90}z5;
z6 = point 2.6 of paths[p];
paths[p] := paths[p]..{right}z6 ;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]) - 0.22mw, 0);

paths[p-2] := paths[p-2] shifted(0, -m) xscaled 0.7 yscaled 0.7;
paths[p-1] := paths[p-1] shifted(0, -m) xscaled 0.7 yscaled 0.7;
paths[p] := paths[p] shifted(0, -m) xscaled 0.7 yscaled 0.7;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p-2])(0 )
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib scaled 0.75)(3)
    nib(end_nib rotated 45)(4)
)(paths[p-2])(strokes[p-2]);
pen_stroke(
    nib(down_nib scaled 0.8)(0,1)
)(paths[p-1])(strokes[p-1]);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib scaled 0.75)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 2 of paths[0]);

lbearing:=0;
endglyph;
