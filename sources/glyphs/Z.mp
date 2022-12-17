input glyph;
beginglyph;
p:=0;
z0=(0, X - thin/2);
z1=(x0 + .8Xw, y0);
z2=((x1-x0)/2, s/2);
z3=(x0,  thick/4);
z4=(x1, y3);

paths[p] = z0--z1;
pen_stroke(
  nib(thin_nib rotated 90)(0,1,2)
)(paths[0])(strokes[0]);

clearxy;
p:=p+1;
z0=(0.8Xw, X);
z1=(0, 0);
paths[1] = z0--z1 ;
pen_stroke(
 nib(thick_vertical_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(0,  thin/2);
z1=(x0+ 0.85Xw, y0);
paths[2] = z0--z1 ;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart(point 0 of paths[0]), y1  - thick/2 - u);
z1=(x0+thick/2, ypart(point 0 of paths[0]));
paths[p]=z0--z1;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib scaled 1.5 rotated terminalangle 1 of paths[p])(1 )
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart(point 1 of paths[2]), y1  + thick/2 + u);
z1=(x0-thick/2, ypart(point 1 of paths[2]));
paths[p]=z0--z1;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib scaled 1.5 rotated terminalangle 1 of paths[p])(1 )
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 0.5 of paths[0]), 1.2X));
endglyph;
