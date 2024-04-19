input glyph;
beginglyph;
z0=(0, y2);
z1=(x0 + 0.4Xw, X-overshoot);
z2=(x1 + 0.4Xw, (y1+y3)/2);
z3=(x2 - 0.4Xw ,overshoot);
z4=(x3 - 0.4Xw, y2);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);

clearxy;
p:=p+1;
z0 =  point 3 of paths[p-1];
z1 =  (xpart point 7 of strokes[p-1], y0 - 0.2X);
paths[1] = z0{dir -60}..{dir 10}z1;
pen_stroke(
    nib(middle_down_nib)(0)
    cut(thick_nib rotated 30, 90)(1)
)(paths[1])(strokes[1]);
endglyph;
