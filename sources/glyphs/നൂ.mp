input glyph;
beginglyph;
input ./glyphs/include/left_arch;

p:=p+1;
input ./glyphs/include/right_arch_with_tail;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

endglyph;
