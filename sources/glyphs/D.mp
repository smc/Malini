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
z4 = (x3 + sw/3, y3);
z5 = (x4 + sw/1.75, 0.45X);
z6 = (x4,  y7);
z7 = (0, thin/2);

paths[p] = z3---z4..z5..z6---z7 ;


pen_stroke(
    nib(thin_nib rotated 90)(0, 1, 3, 4)
    nib(middle_down_nib)(2)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);


anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
endglyph;
