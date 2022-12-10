input glyph;
beginglyph;

p:=0;
z0 = (0.6Xw, y1 - 0.1X);
z1 = ((x0+x2)/2, X-thick/4);
z2 = (x6+0.05Xw, y1 - .2X);
z3 = (x1, (y2 + y4)/2);
z4 = (x0, y5 + .2X);
z5 = (x1, thick/4);
z6 = (0, y5+0.1X);

paths[p] = z0..z1..z2{down}..z3..z4{down}..z5..z6;

pen_stroke(
   nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
   nib(top_nib)(1)
   nib(middle_down_nib)(2,4)
   nib(down_nib)(5)
   nib(thick_vertical_nib rotated 90)(3)
   nib(end_nib rotated terminalangle 6 of paths[0])(6)
)(paths[0])(strokes[0]);

% Serifs
p:=p+1;
strokes[p]:=paths[p] := serif_hanging_top_right rotated -35 slanted -0.2 shifted point 0 of paths[0];

p:=p+1;
strokes[p]:=paths[p] := serif_hanging_top_right rotated -215 slanted -0.2 shifted point infinity of paths[0];

anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 1 of paths[0]), 0));
endglyph;
