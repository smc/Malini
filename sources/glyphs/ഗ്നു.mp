input glyph;
beginglyph;
input ./glyphs/include/ഗ_;

p:=p+1;
input ./glyphs/include/right_arch_with_eye;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);


anchor( "vc", point 4 of paths[p]);
anchor( "bottom", (xpart(point 6 of paths[p]),0));
endglyph;
