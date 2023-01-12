input glyph;
beginglyph;

p:=0;
z0=(0, s);
z1=(x0 + sw/2.75, thick*sind(45)/2);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 45)(1)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]),0)  ;
z1=(x0+sw/2.25, s);
paths[p] = z0--z1 ;
paths[p] := subpath(0, 0.8) of paths[p] ;
pen_stroke(
       nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] = paths[0] shifted (xpart(point infinity of paths[p-1]) - thick/4,0);
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 45)(1)
)(paths[p])(strokes[p]);

p:=p+1;

paths[p] = (z0--z1) shifted (xpart(point infinity of paths[p-1]) - 0.36sw,0);
pen_stroke(
       nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[2] + (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point 1 of paths[3] - (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);

lbearing:=serif_width/2;
anchor( "top", (xpart(point 0 of paths[2]), X));

endglyph;
