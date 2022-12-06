input glyph;
beginglyph;

p:=0;
z0=(0, s);
z1=(0.05*x2, s-2/3thick);
z2=(x0 + sw/2.5, 0);

paths[p] = z0--z1--z2 ;
pen_stroke(
     nib(end_nib scaled 3)(0)
     nib(thick_vertical_nib)(1,2)
     nib(thick_vertical_nib )(2)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point infinity of paths[p-1]  - (thick*sind(60)/4, -thick/4) ;
z1=(x0+sw/2.5, y2-2/3thick);
z2=(1.05*x1 , s);
paths[p] = z0--z1--z2 ;
paths[p] := subpath (0,0.8) of paths[p] ;
pen_stroke(
     nib(thin_vertical_nib  )(0,1)
     nib(thin_vertical_nib)(1)
     nib(end_nib)(2)
)(paths[p])(strokes[p]);

p:=p+1;

paths[p] = paths[0] shifted (xpart(point infinity of paths[p-1]) - sw/10,0);
pen_stroke(
     nib(end_nib scaled 3)(0)
     nib(thick_vertical_nib)(1,2)
     nib(thick_vertical_nib  )(2)
)(paths[p])(strokes[p]);

p:=p+1;

paths[p] =  (z0--z1--z2) shifted (point infinity of paths[p-3]  + (sw/5, 0));
pen_stroke(
     nib(thin_vertical_nib)(0,1)
     nib(thin_vertical_nib)(1)
     nib(end_nib scaled 3)(2)

)(paths[p])(strokes[p]);
endglyph;
