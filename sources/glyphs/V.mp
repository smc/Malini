input glyph;
beginglyph;
p:=0;
z0=(0, X);
z1=(x0 + Xw/2.5, 0);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     nib(thick_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]) + thin/4,0)  ;
z1=(x0+Xw/2.5, X);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point 1 of paths[1] - (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);


endglyph;
