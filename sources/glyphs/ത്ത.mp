input glyph;
beginglyph;
input ./glyphs/include/ത_;

p:=p+1;
input ./glyphs/include/_ത;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", (xpart(point infinity of paths[0]),0));
endglyph;
