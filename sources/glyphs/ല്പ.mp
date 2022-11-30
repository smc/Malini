input glyph;
beginglyph;
p=0;
clearxy;
z0=(0, 0.45m);
z1=(x0 + 0.75mw, y0);

paths[p] = z0 --z1 ;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[0]), ypart(point 1 of paths[0]) - thick*0.6/2);
z1=(x0, 0.6m);
z2=(xpart(point 0.5 of paths[0]), m);
z3=(0, y1);
z4=(0, 0);

paths[p]:= z0{up}..z1..{left}z2...z3---z4;
pen_stroke(
    nib(middle_up_nib )(0,1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3, 4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, thick*0.6/2);
z1=(x0 + mw*1.2, y0);
paths[p]:= z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point infinity of paths[p-1]), 0) ;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);
% പ

clearxy;
p:=p+1;
z0=(x1 + mw/6 , 0);
y2 - y1 = y2/1.6;
z1=(0, y1);
z2=((x1+x3)/2, 0.6m);
x3-x1 = mw*0.6;
z3=(x3, y1);
z4=(x3 - mw/6, 0);
paths[p] := z0..z1..z2..z3..z4;


p:=p+1;
clearxy;
z0= (0,0);
z1=(x0 + 0.75mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( point 4 of paths[p-1] + ( thick*0.5, (thick*0.60)/2) );

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);


paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);

paths[p-2] := paths[p-2] shifted (0.25mw, -0.75m) xscaled 0.8 yscaled 0.75 ;
paths[p-1] := paths[p-1] shifted (0.25mw, -0.75m) xscaled 0.8 yscaled 0.75 ;
paths[p] := paths[p] shifted (0.24mw, -0.75m) xscaled 0.8 yscaled 0.75 ;

pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib rotated 45)(4)
)(paths[p-2])(strokes[p-2]);
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p-1])(strokes[p-1]);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[2]);
anchor( "right", point 0 of paths[p] - (mw/5,0) );

endglyph;