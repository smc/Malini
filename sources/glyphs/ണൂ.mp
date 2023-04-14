input glyph;
beginglyph;
input ./glyphs/include/ണ;

input ./glyphs/include/right_arch_with_tail;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

endglyph;
