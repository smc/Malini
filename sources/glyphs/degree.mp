% Same as ring
input glyph;
beginglyph;
radius:=0.2sw;
z0=(0, X);
z1=(x0 + radius, y0 + radius);
z2=(x1 + radius, y1 - radius);
z3=(x2 - radius, y2 - radius);
z4=(x3 - radius, y3 + radius);

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;
pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);
anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;
