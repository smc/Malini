input glyph;
beginglyph;
p:=0;
z0=(Xw/2.25, X);
z1=(x0, 0);

paths[0] = z0--z1;

pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = (0, ypart(point 0 of paths[0]) - thin/2) ;
z1 = (xpart(point 0 of paths[0]) + Xw/2.25, y0) ;
paths[p] = z0--z1;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(xpart(point 0 of paths[1]), y1  - thick/2 - u);
z1=(x0+thick/2, ypart(point 0 of paths[1]));
paths[p]=z0--z1;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib scaled 1.5 rotated terminalangle 1 of paths[p])(1 )
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart(point 1 of paths[1]), y1  - thick/2 - u);
z1=(x0 - thick/2, ypart(point 1 of paths[1]));
paths[p]=z0--z1;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib scaled 1.5 rotated terminalangle 1 of paths[p])(1 )
)(paths[p])(strokes[p]);


anchor( "top", (xpart(point 0 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 0 of paths[0]), 0));
endglyph;
