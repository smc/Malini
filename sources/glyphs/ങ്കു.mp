input glyph;
beginglyph;
input ./glyphs/include/കു;

p:=p+1;
clearxy;
z0=point 3 of paths[1];
z1=(0, (y0+y2)/2);
z2=((x1+x3)/2, m-overshoot);
z3=point 0 of paths[p-1];
paths[p] := z0{left}..z1{up}..z2{right}..{down}z3;
paths[p]:=harmonize(paths[p]);
pen_stroke(
   nib(thin_vertical_nib rotated 90)(0, 4)
   nib(middle_down_nib scaled 0.9)(1)
   nib(top_nib)(2)
   nib(middle_up_nib)(3)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[0]);

endglyph;
