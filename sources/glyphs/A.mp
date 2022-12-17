input glyph;
beginglyph;

p:=0;
% Left slant
z0= (0, 0);
z1= (x0 + 0.36Xw, X);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_vertical_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart(point infinity of paths[p-1]),X) ;
z1=(x0 + 0.36Xw, thin/2);
paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib rotated terminalangle 0 of paths[p])(0)
    nib(thick_vertical_nib rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = point 0.4 of paths[p-2] ;
z1 = (xpart point 0.65 of paths[p-1], y0) ;
paths[p]:= z0--z1 ;
pen_stroke(
    nib(top_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(-thin/2 + thin/2, y1+ thick/2);
z1 = (- thick/2 - 3/4u , thin/2);
z2 = (+ thick/2 + 3/4u , y1);
z3 = (thin/2 - thin/2, y0);
paths[p] = z0{down}..{left}z1 -- z2{left}..{up}z3 ;
paths[p] := paths[p] shifted (point 0 of paths[0] + (thin/2,0));
pen_stroke(
     nib(serif_nib rotated terminalangle 0  of paths[p])(0)
     nib(serif_nib rotated terminalangle 1  of paths[p])(1)
     nib(serif_nib rotated terminalangle 2  of paths[p])(2)
     nib(serif_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(-thick/2 + thin/2, y1+ thick/2);
z1 = (- thick/2 - 3/4u , thin/2);
z2 = (+ thick/2 + 3/4u , y1);
z3 = (thick/2 - thin/2, y0);
paths[p] = z0{down}..{left}z1 -- z2{left}..{up}z3 ;
paths[p] := paths[p] shifted (xpart point infinity of paths[1]-thin/4,0);
pen_stroke(
     nib(serif_nib rotated terminalangle 0  of paths[p])(0)
     nib(serif_nib rotated terminalangle 1  of paths[p])(1)
     nib(serif_nib rotated terminalangle 2  of paths[p])(2)
     nib(serif_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
endglyph;
