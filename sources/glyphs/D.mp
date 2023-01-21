input glyph;
beginglyph;
p:=0;
z0= (0, X);
z1=( x0, y0 - 0.5X);
z2=( x1, y1 - 0.5X);
paths[p] = z0..z1..z2;

pen_stroke(
    nib(thick_vertical_nib)(0, 1, 2)
)(paths[p])(strokes[p]);

p:=p+1;
z3 = (x0, X - thin/2);
z4 = ((x3 + x5)/3, y3);
z5 = (x0 + 0.7Xw, (y4+y6)/2.04);
z6 = (x4,  y7);
z7 = (0, thin/2);

paths[p] = z3---z4..z5{down}..z6---z7 ;


pen_stroke(
    nib(thin_nib rotated 90)(0, 1, 3, 4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[0], X);
path serif_stroke;
serif_stroke := serif_stroke_top(paths[p]);
strokes[1] := subpath(3, 5) of serif_stroke -- subpath(0, 8) of strokes[1] -- cycle;

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke_bottom(paths[p]);


anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
endglyph;
