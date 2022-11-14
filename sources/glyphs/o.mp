input glyph;
beginglyph;
save r;
r=0.8;
z0 = (0, s/2);
z1 = (x0 + r*sw/2, s - thick/4);
z2 = (x1 + r*sw/2, y0 );
z3 = (x2 - r*sw/2, thick/4);
z4 = (x0, y0);
paths[0]:= z0{up}..{right}z1..{down}z2..z3{left}..{up}z4 ;

pen_stroke(
   nib(middle_down_nib)(0, 2, 4)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);
anchor( "top", (xpart(point 1 of paths[0]), X) );
endglyph;
