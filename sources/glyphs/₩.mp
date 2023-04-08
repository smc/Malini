input glyph;
beginglyph;
z0=(0, X);
z1=(x0 + Xw/4, 0);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_vertical_nib)(0)
     nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1])+thin/4,0)  ;
z1=(x0+Xw/4, X);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thin_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := paths[p-2] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
     nib(thick_vertical_nib)(0)
     nib(thick_vertical_nib)(1)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] := paths[p-2] shifted (xpart(point infinity of paths[p-2]), 0);
pen_stroke(
     nib(thin_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);
p:=p+1;
paths[4] = (-sw/6, 0.75X)--(xpart(point 1 of paths[3])*1.1, 0.75X);
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[p])(0)
    nib(thin_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);
p:=p+1;
paths[p] = (-sw/6, X/2)--(xpart(point 1 of paths[3])*1.1, X/2);
pen_stroke(
    nib(thin_nib rotated terminalangle 0 of paths[p])(0)
    nib(thin_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);
endglyph;
