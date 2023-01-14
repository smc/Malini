input glyph;
beginglyph;
p:=0;
z0= (thick/2, X-thick/4);
z1=( x0, (y0+y2)/2);
z2=( x1, thick/4);
z3 = (x0, X - thin/2);
z4 = (x3 + Xw/1.6, y3);
z5 = (x0, y1);
z6 = (x5 + x4*0.75, y5);

paths[0] = z0--z2 ;
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[1] = z3--z4;

pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = z5--z6;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
strokes[p] := serif_stroke_top(paths[p]);

p:=4;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke_bottom(paths[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[1]), X);
z1=(x0 + 0.05sw, y0  - 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 4.75 of strokes[1];
paths[p] :=z0--z1--z2{dir 105}..{dir 160}z3--cycle;
strokes[p] := reverse paths[p];

p:=p+1;
paths[p] := serif_right_thin shifted (point infinity of paths[2]);
strokes[p] := serif_stroke_right_thin(paths[p]);

endglyph;
