input glyph;
beginglyph;

p:=0;
z0=(0, 0);
z1=(x0 + Xw/2.5, X);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]),X-thick*sind(45)/2)  ;
z1=(x0+Xw/2.5, 0);
paths[p] = z0--z1 ;

pen_stroke(
    nib(thick_nib)(1)
    cut(thick_nib, 45)(0)
)(paths[p])(strokes[p]);
clearxy;
p:=p+1;
z0 = point 0.4 of paths[p-2] ;
z1 = (xpart point 0.65 of paths[p-1], y0) ;
paths[p]:= z0--z1 ;
pen_stroke(
    nib(top_nib)(0,1)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] := serif_bottom_thin shifted (xpart point 0 of paths[0] + serif_height/2, 0);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[1]-thin/4,0);
strokes[p] := serif_stroke(paths[p]);

lbearing:=serif_width-lbearing;
anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
endglyph;
