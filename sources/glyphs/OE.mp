input glyph;
beginglyph;
p:=0;
z0=(0.5Xw, X-thin/2);
z1=(0, 0.5X);
z2=(x0, thin/2);

paths[p] = z0{left}..{down}z1..{right}z2;

pen_stroke(
   nib(middle_down_nib)(1)
   nib(thin_nib rotated 90)(0)
   nib(thin_nib rotated 90)(2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0= (0, X-thick/4);
z1=( x0, thick/4);
paths[p] = z0--z1; ;
paths[p] := paths[p] shifted (xpart point 2 of paths[0], 0);
pen_stroke(
   nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Top bar
clearxy;
p:=p+1;
z3 = (xpart point 0 of paths[p-1], X - thin/2);
z4 = (x3 + Xw/1.6, y3);
paths[p] = z3--z4;
pen_stroke(
    cut(thin_nib rotated 90, 90)(0)
    nib(thin_nib rotated 90)(1)
)(paths[p])(strokes[p]);

p:=p+1;
z5 = (xpart point 0 of paths[p-1], 0.5X);
z6 = (x5 +  Xw/2, y5);
paths[p] = z5--z6;
pen_stroke(
   nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Bottom bar
p:=p+1;
z7 = (xpart(point 1 of paths[1]), thin/2);
z8 = (x4, y7);
paths[p] = z7--z8;
pen_stroke(
   nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs

showcontrols:=0;

% Bottom bar serif
p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[p-1]), 0);
z1=(x0 + 0.05sw, y0  + 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 2.25 of strokes[p-1];
paths[p] :=z0--z1--z2{dir -105}..{dir 200}z3--cycle;
strokes[p] := paths[p];

p:=p+1;
paths[p] := serif_right_thin shifted (point infinity of paths[p-3]);
strokes[p] := serif_stroke_right_thin(paths[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[p-5]), X);
z1=(x0 + 0.05sw, y0  - 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 4.75 of strokes[p-5];
paths[p] :=z0--z1--z2{dir 105}..{dir 160}z3--cycle;
strokes[p] := reverse paths[p];

endglyph;
