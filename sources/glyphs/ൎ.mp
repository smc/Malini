input glyph;
beginglyph;
clearxy;
% This glyph does not slant. Reset slant value
slant := 0;
d = thick*1.5;
paths[p] = circle(d);
paths[p]:= paths[p] shifted(-d, X-d);
strokes[p] = paths[p];

absolute_position := 1;
lbearing:=0;
rbearing:=0;
anchor( "vc", point 1 of paths[p]);
endglyph;
