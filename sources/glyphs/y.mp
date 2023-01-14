input glyph;
beginglyph;
p:=0;
z0=(0, s);
z1=(x0 + sw/2, 0);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib,  45)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]) + sw/2.5, s);
z1=(xpart(point infinity of paths[p-1]) - sw/4.75, -descent*0.9)  ;
z2=(x1 - sw/4, y1);
paths[p] = z0--z1{dir -120}..{dir 120}z2 ;
pen_stroke(
     nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point 0 of paths[1] - (thin/2, 0));
strokes[p] := serif_stroke_top(paths[p]);



endglyph;
