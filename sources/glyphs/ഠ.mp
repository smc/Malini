input glyph;
beginglyph;

z0=(0, y2);
z1=((x0 + x2)/2, m-overshoot);
z2=(x0 + 0.9mw, (y1+y3)/2);
z3=(x1, undershoot);
z4=z0;

paths[0] = z0{up}..{right}z1..{down}z2..z3{left}..{up}z4;
paths[p]:=harmonize(paths[p]);
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
