input glyph;
beginglyph;
p:=0;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, thick*0.5/2);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, y0-thick*0.5/2);
z6 = (x5 + mw/3, y1);
z7 = (x6, 0);

paths[p] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6---z7;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3,4)
   nib(top_nib)(5)
   nib(thick_vertical_nib)(6,7)
)(paths[p])(strokes[p]);

% മ
clearxy;
p:=p+1;
z0= (0, 0);
z1= (x0, m/2);
z2= ((x1+x3)/2, m);
z3= (x0+ mw, y1);
z4= (x3, y0);
paths[p] = z0---z1..z2..z3---z4;
paths[p] := paths[p] shifted (point infinity of paths[p-1] + (thin/2, 0));
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point 0 of paths[p-1] + (0, thick*sind(45)/2);
z1=(xpart(point 4 of paths[p-1]), y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= point 1.8 of paths[p-2];
z1= point 0 of paths[p-1];
paths[p] = z0{dir -20}..{dir 190}z1;
pen_stroke(
    nib(middle_down_nib rotated 20)(0)
    nib(end_nib rotated -45)(1)
)(paths[p])(strokes[p]);



anchor( "vc", point 4 of paths[p]);
anchor( "bottom", (xpart(point 6 of paths[p]),0));
endglyph;
