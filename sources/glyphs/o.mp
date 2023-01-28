input glyph;
beginglyph;
p:=0;
save r;
r=0.85;
z0 = (0, s/2);
z1 = ((x0 + x2)/2, s - overshoot);
z2 = (x0 + r*sw, y0);
z3 = (x1, undershoot);
z4 = (x0, y0);
paths[p]:= z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);
lbearing:=0.75lbearing;
rbearing:=0.75rbearing;
anchor( "top", (xpart(point 1 of paths[p]), 0.9X));
endglyph;
