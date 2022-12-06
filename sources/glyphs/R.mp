input glyph;
beginglyph;
p:=0;
z0=(0, X);
z1=(x0, thick/2);
z2=(x0  ,0);
paths[p] := z0--z1--z2;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(end_nib scaled 3)(infinity)
)(paths[p])(strokes[p]);

%serif
p:=p+1;
paths[1] := serif_top_left shifted point 0 of paths[p-1];
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[p])(0)
    nib(end_nib scaled 0.5 rotated terminalangle 1 of paths[p])(1)
    nib(end_nib scaled 0.5 rotated terminalangle 2 of paths[p])(2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = (xpart (point 0 of paths[0]), X-thick*sind(55)/2);
z1 = (x0 + Xw/4, y0);
z2 = (x1 + Xw/3.5, (y1+y3)/2);
z3 = (x1, y4);
z4 = point 0.6 of paths[0];
paths[p]  = z0--z1{right}..z2{down}..{left}z3--z4;

pen_stroke(
    nib(top_nib)(0,1)
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

anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
anchor( "bottom", (xpart(point 1 of paths[1]), 0));
endglyph;
