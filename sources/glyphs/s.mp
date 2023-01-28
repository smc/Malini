input glyph;
beginglyph;

p:=0;
z0 = (x4, y1 - s/4);
z1 = ((x0+x2)/2, s-overshoot);
z2 = (x6+ thick/2, (y1 +y3)/2);
z3 = ((x2 + x4)/2, (y2 + y4)/2);
z4 = (0.75sw, (y3 + y5)/2);
z5 = ((x4 + x6)/1.8, undershoot);
z6 = (0, y5 + s/4);

paths[p] = z0{dir 90}  ..z1{left}..z2{down} ..z3..z4{down} ..z5{left} ..  z6;

pen_stroke(
   nib(serif_nib rotated terminalangle 0 of paths[p] )(0)
   nib(top_nib scaled 0.85)(1)
   nib(middle_down_nib)(2,4)
   nib(middle_down_nib scaled 0.85 rotated 90)(3)
   nib(down_nib  scaled 0.85)(5)
   nib(serif_nib rotated terminalangle infinity of paths[0] )(infinity)
)(paths[p])(strokes[p]);

% Serif
p:=p+1;
clearxy;
z0 = point (length(paths[p-1])*2 + 1 ) of strokes[p-1];
z1 = (x0 + serif_height, y0);
z2 = (x1, s);
z3 = (x2 - (x1-x0), y2);
z4 = point 0.5 of paths[p-1];
paths[p] = z0--z1--z2--z3--z4..{down}cycle;
strokes[p] := paths[p];

p:=p+1;
clearxy;
z0 = point 6 of strokes[p-2];
z1 = (xpart point 7 of strokes[p-2], y0);
z2 = (x1, 0);
z3 = (x2 - (x1-x0), y2);
z4 = point 5.6 of paths[p-2];
paths[p] = z0--z1--z2--z3--z4..{up}cycle;
strokes[p] := paths[p];

anchor( "top", (xpart(point 1 of paths[0]), 0.9X));
anchor( "bottom", (xpart(point 1 of paths[0]), 0));
endglyph;
