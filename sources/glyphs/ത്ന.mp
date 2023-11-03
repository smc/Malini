input glyph;
beginglyph;
input ./glyphs/include/ത_;

clearxy;
p:=p+1;
input ./glyphs/include/right_arch;
paths[p] := paths[p] shifted (xpart(point infinity of paths[0]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[0]), 0);

anchor( "vc", (xpart(point 4 of paths[0]),0));
anchor( "bottom", point 3.3 of paths[1]);
anchor( "right", point 3.3 of paths[1]);
endglyph;
