input glyph;
beginglyph;

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
paths[p] = z0---z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= point 1.8 of paths[p-2];
z1= (xpart point 2.1 of paths[p-2] , ypart point 1 of paths[p-2]);
z2= point 0 of paths[p-1];

paths[p] = z0{dir -10}..z1{dir -110}..{dir 200}z2;
pen_stroke(
    nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p]  )(0)
    nib(middle_down_nib )(1)
    nib(end_nib rotated terminalangle 2 of paths[p] )(2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p]:=paths[0] shifted (xpart(point 1 of paths[p-2]) + thin/2, 0);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,4)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p]:=paths[1] shifted (xpart(point 1 of paths[p-3]), 0);

pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p]:=paths[2] shifted (xpart(point 1 of paths[p-4]), 0);

pen_stroke(
    nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p]  )(0)
    nib(middle_down_nib )(1)
    nib(end_nib rotated terminalangle 2 of paths[p] )(2)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 1 of paths[1]),0));
anchor( "bottom", point 0.9 of paths[4]);
anchor( "right", point 0.9 of paths[4] - (mw/5,0) );
endglyph;
