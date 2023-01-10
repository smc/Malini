input glyph;
beginglyph;
p:=0;
z0= (0, X-thick/4);
z1=( x0, (y0 + y2)/2);
z2=( x1, thick/4);
paths[p] = z0{dir -90}..z1..{dir -90}z2; ;
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

% Top bar
p:=p+1;
z3 = (x0, X - thin/2);
z4 = (x3 + Xw/1.6, y3);
paths[p] = z3--z4;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
z5 = (x0, y1);
z6 = (x5 +  Xw/2, y5);
paths[2] = z5--z6;
pen_stroke(
   nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Bottom bar
p:=p+1;
z7 = (xpart(point 2 of paths[0]), thin/2);
z8 = (x4, y7);
paths[p] = z7--z8;
pen_stroke(
   nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs


p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[0], 0);
strokes[p] := serif_stroke(paths[p]);

% Bottom bar serif
p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[3]), 0);
z1=(x0 + 0.05sw, y0  + 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 2.25 of strokes[3];
paths[p] :=z0--z1--z2{dir -105}..{dir 200}z3--cycle;
strokes[p] := paths[p];

p:=p+1;
paths[p] := serif_bottom_thin rotated 90 shifted (point infinity of paths[2]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
clearxy;
z0=(xpart(point 1 of paths[1]), X);
z1=(x0 + 0.05sw, y0  - 1.5serif_width);
z2=(x1 - serif_height, y1);
z3=point 4.75 of strokes[1];
paths[p] :=z0--z1--z2{dir 105}..{dir 160}z3--cycle;
strokes[p] := reverse paths[p];



anchor( "top", (xpart(point 0.5 of paths[1]), 1.2X));
endglyph;
