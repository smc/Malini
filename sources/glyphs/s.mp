input glyph;
beginglyph;

p:=0;
z0 = (x4, y1 - s/3.5);
z1 = ((x0+x2)/2, s-overshoot);
z2 = (x6+ thick/2, (y1 +y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (0.75sw, (y3 + y5)/2);
z5 = ((x4 + x6)/1.8, undershoot);
z6 = (0, y5+s/3.5);

paths[p] = z0{dir 90}  ..z1{left}..z2{down} ..z3..z4{down} ..z5{left} ..  z6;

pen_stroke(
   nib(serif_nib )(0)
   nib(top_nib scaled 0.85)(1)
   nib(middle_down_nib)(2,4)
   nib(middle_down_nib scaled 0.85 rotated 90)(3)
   nib(down_nib  scaled 0.85)(5)
   cut(serif_nib, 0 )(infinity)
)(paths[p])(strokes[p]);

% Serif
clearxy;
z0 = (xpart point 0 of paths[p], s-thick/4);
z1 = (xpart point infinity of paths[p] , thick/2);
strokes[p] :=point 0 of strokes[p]
   -- z0
   .. (subpath(1, 7) of strokes[p])
   -- z1 % Bottom
   .. (subpath(8, 14) of strokes[p])..cycle;

lbearing:=lbearing/2;
anchor( "top", (xpart(point 1 of paths[0]), 0.9X));
anchor( "bottom", (xpart(point 1 of paths[0]), 0));
endglyph;
