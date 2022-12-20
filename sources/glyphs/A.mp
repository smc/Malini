input glyph;
beginglyph;

p:=0;
% Left slant
z0= (0, 0);
z1= (x0 + 0.36Xw, X);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_vertical_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=(xpart(point infinity of paths[p-1]),X) ;
z1=(x0 + 0.36Xw, thin/2);
paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib rotated terminalangle 0 of paths[p])(0)
    nib(thick_vertical_nib rotated terminalangle 1 of paths[p])(1)
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
paths[p] := serif_bottom_thin shifted (point 0 of paths[0] + (serif_height/2,0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[1]-thin/4,0);
strokes[p] := serif_stroke(paths[p]);

lbearing:=serif_width-lbearing;
anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
endglyph;
