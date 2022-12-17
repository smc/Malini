input glyph;
beginglyph;
p:=0;
r := 0.8;
z0=(0, X);
z1=(x0 + r*Xw, 0);

paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib scaled (1+sind(45)/2))(0)
    nib(thick_vertical_nib scaled (1+sind(45)/2))(1)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0 + r*Xw, X);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_vertical_nib scaled (1+sind(45)/2))(0)
    nib(thin_vertical_nib scaled (1+sind(45)/2))(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, y1-thick/2);
z1 = (x0 - thick/2 - 3/4u , -thin/2);
z2 = (x0 + thick/2 + 3/4u , y1);
z3 = (x0, y0);
paths[p] = z0{up}..{left}z1 -- z2{left}..{down}z3 ;
paths[p] := paths[p] shifted (point 0 of paths[0] + (thin/2, 0));
pen_stroke(
     nib(thin_nib rotated terminalangle 0  of paths[p])(0)
     nib(thin_nib rotated terminalangle 1  of paths[p])(1)
     nib(thin_nib rotated terminalangle 2  of paths[p])(2)
     nib(thin_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);



p:=p+1;
clearxy;
z0=(0, y1-thick/2);
z1 = (x0 - thick/2 - 3/4u , -thin/2);
z2 = (x0 + thick/2 + 3/4u , y1);
z3 = (x0, y0);
paths[p] = z0{up}..{left}z1 -- z2{left}..{down}z3 ;
paths[p] := paths[p] shifted (point 1 of paths[1] - (thin, 0));
pen_stroke(
     nib(thin_nib rotated terminalangle 0  of paths[p])(0)
     nib(thin_nib rotated terminalangle 1  of paths[p])(1)
     nib(thin_nib rotated terminalangle 2  of paths[p])(2)
     nib(thin_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0=(0, y1+ thick/2);
z1 = (x0 - thick/2 - 3/4u , thin/2);
z2 = (x0 + thick/2 + 3/4u , y1);
z3 = (x0, y0);
paths[p] = z0{down}..{left}z1 -- z2{left}..{up}z3 ;
paths[p] := paths[p] shifted (point 1 of paths[0] - (thin/2, 0));
pen_stroke(
     nib(thin_nib rotated terminalangle 0  of paths[p])(0)
     nib(thin_nib rotated terminalangle 1  of paths[p])(1)
     nib(thin_nib rotated terminalangle 2  of paths[p])(2)
     nib(thin_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, y1+ thick/2);
z1 = (x0 - thick/2 - 3/4u , thin/2);
z2 = (x0 + thick/2 + 3/4u , y1);
z3 = (x0, y0);
paths[p] = z0{down}..{left}z1 -- z2{left}..{up}z3 ;
paths[p] := paths[p] shifted (point 0 of paths[1] + (thin, 0));
pen_stroke(
     nib(thin_nib rotated terminalangle 0  of paths[p])(0)
     nib(thin_nib rotated terminalangle 1  of paths[p])(1)
     nib(thin_nib rotated terminalangle 2  of paths[p])(2)
     nib(thin_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);


endglyph;
