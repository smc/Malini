input glyph;
beginglyph;
p:=0;
clearxy;
z0= (0,  thin/2);
z1= (x0, m/2);
z2= ((x1+x3)/2, m-overshoot);
z3= (x0+ mw, y1);
z4= (x3, 0);
paths[p] = z0---z1..z2..z3---z4;
paths[p]  := paths[p] shifted (mw/3,0);
pen_stroke(
    cut(thin_vertical_nib, 45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3, 4)
)(paths[p])(strokes[p]);

% Bottom bar
clearxy;
p:=p+1;
z0=(xpart(point 0 of paths[p-1])-thin/2, thick*sind(45)/2);
z1=(xpart(point 4 of paths[p-1])+thick/2, y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);

% Bow
clearxy;
p:=p+1;
z0= point 1.8 of paths[p-2];
z1= (xpart point 2.1 of paths[p-2] , ypart point 1 of paths[p-2]);
z2= point 0 of paths[p-1];

paths[p] = z0{dir -10}..z1{dir -110}..{dir 200}z2;
pen_stroke(
    nib(end_nib scaled 0.8 rotated terminalangle 0 of paths[p]  )(0)
    nib(middle_down_nib )(1)
    cut(end_nib rotated terminalangle 2 of paths[p], 90 )(2)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0 = point 4 of paths[p-3];
z1 = (xpart(point 0.5 of paths[p-2]), -descent*0.8  );
z2 = (xpart(point 1 of paths[0]) - mw/3, ypart(point 1 of paths[0]));
z3 = (x2 +mw/6, m);
paths[p] =  z0{down}..{left}z1..z2..z3;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib rotated 45)(3)
)(paths[p])(strokes[p]);

anchor( "right", point 0.5 of paths[p]);

endglyph;
