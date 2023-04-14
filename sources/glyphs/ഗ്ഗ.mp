input glyph;
beginglyph;

input ./glyphs/include/ഗ;

p:=p+1;
input ./glyphs/include/ഗ;

paths[p]:=paths[p-1] shifted(0.45m, -m) xscaled 0.75 yscaled 0.75;
strokes[p]:=strokes[p-1] shifted(0.45m, -m) xscaled 0.75 yscaled 0.75;


anchor( "vc", point 3 of paths[0]);

endglyph;
