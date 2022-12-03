input glyph;
beginglyph;
p=0;
paths[p] := left_arch_with_eye;
pen_stroke(
    nib(middle_up_nib scaled 0.6)(0)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
    nib(thin_vertical_nib)(6,7,8)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = right_arch shifted point infinity of paths[p-1];

pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.7mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[2] shifted ( xpart(point 4 of paths[p-1]) +  thick*0.5, thick*sind(45)/2);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);
paths[p] = z0--z1;
paths[p] := paths[3] shifted (xpart(point 1 of paths[p-1]), 0);
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
z3 = (x1, y0-m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{down}.. {left}z1..z2..z3..z4;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated 30)(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 5 of paths[0]),0));
endglyph;
