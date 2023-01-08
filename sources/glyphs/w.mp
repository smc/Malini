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
z0=(xpart(point infinity of paths[p-1]),0)  ;
z1=(x0+sw/2.5, s);
paths[p] = z0--z1 ;
paths[p] := subpath(0, 0.8) of paths[p] ;
pen_stroke(
     nib(thin_vertical_nib)(0)
     nib(thin_vertical_nib rotated terminalangle infinity of paths[p])(1)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] = paths[0] shifted (xpart(point infinity of paths[p-1]) - thick/4,0);
pen_stroke(
     nib(thick_nib)(0)
     nib(thick_nib)(1)
)(paths[p])(strokes[p]);

p:=p+1;

paths[p] = (z0--z1) shifted (xpart(point infinity of paths[p-1]) - 0.4sw,0);
pen_stroke(
    nib(thin_vertical_nib)(0, 1)
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
