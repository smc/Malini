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
z0 = (0,-descent*0.8);
z1 = (x0+sw/4, -descent);
z2=point infinity of paths[p-1]  ;
z3=(x2+sw/2.5, s);
paths[p] = z0--z1 -- z3;

pen_stroke(
     nib(thick_nib rotated terminalangle 0 of paths[p])(0)
     nib(thin_nib scaled 1.25)(1)
     nib(thin_vertical_nib scaled 1.25)(2,3)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0] + thin/2, s);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point infinity of paths[1] - (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);


endglyph;
