input glyph;
beginglyph;
p:=0;
z0= (0, X-thick/4);
z1=( x0, thick/4);
paths[p] = z0--z1; ;
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
z7 = (xpart(point 1 of paths[0]), thin/2);
z8 = (x4, y7);
paths[p] = z7--z8;
pen_stroke(
   nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs

showcontrols:=0;
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[p-4], X);
path serif_stroke;
serif_stroke := serif_stroke_top(paths[p]);
strokes[p-3] := subpath(3, 5) of serif_stroke -- subpath(0, 2) of strokes[p-3] -- cycle;


p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[p-5], 0);
path serif_stroke;
serif_stroke := serif_stroke_bottom(paths[p]);
strokes[p-2] := subpath(0, 2) of serif_stroke -- subpath(1, 3) of strokes[p-2] -- cycle;

% Bottom bar serif
p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[p-3]), 0);
z1=(x0 + 0.05sw, y0  + 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 4.25 of strokes[p-3];
paths[p] :=z0--z1--z2{dir -105}..{dir 200}z3--cycle;
strokes[p] := paths[p];

p:=p+1;
paths[p] := serif_right_thin shifted (point infinity of paths[p-5]);
strokes[p] := serif_stroke_right_thin(paths[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[p-7]), X);
z1=(x0 + 0.05sw, y0  - 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 3.75 of strokes[p-7];
paths[p] :=z0--z1--z2{dir 105}..{dir 160}z3--cycle;
strokes[p] := reverse paths[p];

anchor( "top", (xpart(point 0.5 of paths[1]), 1.2X));
endglyph;
