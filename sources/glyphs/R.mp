input glyph;
beginglyph;
p:=0;
z0=(thick/2, X);
z1=(x0  ,0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = (xpart (point 0 of paths[0]), X-thin/2);
z1 = (x0 + Xw/4, y0);
z2 = (x1 + Xw/3.5, (y1+y3)/2);
z3 = (x1, y4);
z4 = point 0.55 of paths[0];
paths[p]  = z0--z1{right}..z2{down}..{left}z3--z4;

pen_stroke(
    nib(thin_nib rotated 90)(0,1)
    nib(end_nib rotated 90)(3,4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 =  point 2.9 of paths[p-1];
z1 = (xpart(point 2 of paths[p-1])+thick/2,0);
paths[p] = z0..{dir -45}z1;

pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);


% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0]);
strokes[p] := serif_stroke_top(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke_bottom(paths[p]);

anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;
