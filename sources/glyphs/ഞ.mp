input glyph;
beginglyph;
input ./glyphs/include/left_arch_with_eye;

p:=p+1;
input ./glyphs/include/_ത;

paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);


anchor( "right", point infinity of paths[p]);

endglyph;