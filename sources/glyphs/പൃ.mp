input glyph;
beginglyph;
p=0;
paths[p] := ra scaled 0.6;
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[p])(strokes[p]);
p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.75mw, y0);
z2=(x1, m);

paths[1]:= z0--z1 ;
paths[1]:= paths[1] shifted ( point 4 of paths[0] + ( thick*0.5, thick*sind(45)/2) );

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);


paths[2]:= z0--z1;
paths[2]:= paths[2] shifted (xpart(point 1 of paths[1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
% ഋ sign
z0 = point 0 of paths[p-1];
z1 = (x0 - 0.5mw, -descent*1.2);
z2 = (x1 - mw/3, (y1+y3)/2);
z3 = (x1, y2+m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{down}.. {left}z1..z2..z3..z4;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated 30)(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 2 of paths[0]),0));

endglyph;
