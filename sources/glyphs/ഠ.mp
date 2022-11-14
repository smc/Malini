input glyph;
beginglyph;
z0=(0, m/2);
z1=(x0 + 0.5mw, y0 + m/2);
z2=(x1 + 0.5mw, y1 - m/2);
z3=(x2 - 0.5mw, y2 - m/2);
z4=z0;

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4;

pen_stroke(
   nib(middle_up_nib)(0,4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[0])(strokes[0]);
anchor( "vc", (xpart(point 1 of paths[0]),0));
anchor( "bottom", (xpart(point 2.75 of paths[0]),0));
anchor( "right", (xpart(point 2.75 of paths[0]),0));
endglyph;
