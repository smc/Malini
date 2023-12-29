input glyph;
beginglyph;

input ./glyphs/include/ശ;

p:=p+1;
input ./glyphs/include/ശ;
paths[p] := paths[p-1]  shifted (0.5mw, -1.1m) xscaled 0.8 yscaled 0.75;
strokes[p] := strokes[p-1]  shifted (0.5mw, -1.1m) xscaled 0.8 yscaled 0.75;


endglyph;
