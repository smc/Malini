input glyph;
beginglyph;
input ./glyphs/include/ഒ;

clearxy;
p:=p+1;

input ./glyphs/include/ാ;

paths[p] := paths[p]  shifted(xpart(point 5 of paths[p-1]) + mw/4, 0);
strokes[p] := strokes[p]  shifted(xpart(point 5 of paths[p-1]) + mw/4, 0);

endglyph;

