input glyph;
beginglyph;
clearxy;

r = thick*1.5;
paths[p] = circle(r);
paths[p]:= paths[p] shifted(0, X-r);
strokes[p] = paths[p];
lbearing:=0;
rbearing:=0;
anchor( "vc", point 1 of paths[p]);
endglyph;
