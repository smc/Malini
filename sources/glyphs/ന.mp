input glyph;
beginglyph;

input ./glyphs/include/left_arch;

p:=p+1;
input ./glyphs/include/right_arch;

paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", (xpart(point 3 of paths[0]),0));

endglyph;
