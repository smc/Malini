input glyph;
beginglyph;
clearxy;
p:=0;
clearxy;
z0= (0, 0);
z1= (x0, m/2);
z2= ((x1+x3)/2, m);
z3= (x0+ mw, y1);
z4= (x3, y0);
paths[p] = z0---z1..z2..z3---z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 0 of paths[0] + (0, thick*sind(45)/2);
z1=(xpart(point 4 of paths[0]), y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= point 1.8 of paths[0];
z1= point 0 of paths[1];
paths[p] = z0{dir -20}..{dir 190}z1;
pen_stroke(
    nib(middle_down_nib rotated 20)(0)
    nib(end_nib rotated -45)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
% ഋ sign
z0 = point 1 of paths[p-2];
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

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", point 1 of paths[1]);
anchor( "right",  point 1 of paths[1]);

endglyph;
