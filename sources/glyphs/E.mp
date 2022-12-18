input glyph;
beginglyph;
p:=0;
z0= (0, X);
z1=( x0, y0 - 0.5X);
z2=( x1, y1 - 0.5X);
paths[p] = z0{dir -90}..z1..{dir -90}z2; ;
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
z3 = (x0, y0 - thin/2);
z4 = (x3 + Xw/1.6, y3);
paths[p] = z3--z4;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
z5 = (x0, y1);
z6 = (x5 +  Xw/2, y5);
paths[2] = z5--z6;
pen_stroke(
   nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
z7 = (xpart(point 2 of paths[0]), thin/2);
z8 = (x4, y7);
paths[p] = z7--z8;
pen_stroke(
   nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs

p:=p+1;
clearxy;
z0=(-thick/2 + thin/2, y1 -thick/2);
z1 = (- thick/2 - 3/4u , -thin/2);
z2 = (+ thick/2 + 3/4u , y1);
z3 = (thick/2 - thin/2, y0);
paths[p] = z0{up}..{left}z1 -- z2{left}..{down}z3 ;
paths[p] := paths[p] shifted (point 0 of paths[0]);
pen_stroke(
     nib(serif_nib rotated terminalangle 0  of paths[p])(0)
     nib(serif_nib rotated terminalangle 1  of paths[p])(1)
     nib(serif_nib rotated terminalangle 2  of paths[p])(2)
     nib(serif_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(xpart(point 1 of paths[1]), y1  - thick/2 - u);
z1=(x0 - thick/2, ypart(point 1 of paths[1]));
paths[p]=z0--z1;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib scaled 1.5 rotated terminalangle 1 of paths[p])(1 )
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_bottom_thin rotated 90 shifted (point infinity of paths[2]);
strokes[p] := serif_stroke(paths[p]);

clearxy;
p:=9;
z0=(xpart(point 1 of paths[3]), y1  + thick/2 + u);
z1=(x0-thick/2, ypart(point 1 of paths[3]));
paths[p]=z0--z1;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib scaled 1.5 rotated terminalangle 1 of paths[p])(1 )
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 0.5 of paths[1]), 1.2X));
endglyph;
