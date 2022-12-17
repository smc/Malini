input glyph;
beginglyph;
p:=0;
z0=(0, s);
z1=(x0 + sw/2.5, 0);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     nib(thick_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]) + thin/4,0)  ;
z1=(x0+sw/2.5, s);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thin_nib scaled 1.25)(0,1)
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
     nib(serif_nib rotated terminalangle 0 of paths[p])(0)
     nib(serif_nib rotated terminalangle 1 of paths[p])(1)
     nib(serif_nib rotated terminalangle 2 of paths[p])(2)
     nib(serif_nib rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, y1-thick/2);
z1 = (x0 - thick/2 - 3/4u , -thin/2);
z2 = (x0 + thick/2 + 3/4u , y1);
z3 = (x0, y0);
paths[p] = z0{up}..{left}z1 -- z2{left}..{down}z3 ;
paths[p] := paths[p] shifted (point 1 of paths[1] - (thin/2, 0));
pen_stroke(
     nib(serif_nib rotated terminalangle 0 of paths[p])(0)
     nib(serif_nib rotated terminalangle 1 of paths[p])(1)
     nib(serif_nib rotated terminalangle 2 of paths[p])(2)
     nib(serif_nib rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

endglyph;
