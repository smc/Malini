input glyph;
beginglyph;

input ./glyphs/include/പ;

p:=p+1;

% Ra
input ./glyphs/include/റ;

paths[p] := paths[p] shifted (0, -1.05m ) xscaled 0.7 yscaled 0.7;
strokes[p] := strokes[p] shifted (0, -1.05m ) xscaled 0.7 yscaled 0.7;
p:=p+1;
paths[p] := paths[p-1] shifted (0.8mw, 0);
strokes[p] := strokes[p-1] shifted (0.8mw, 0);

rbearing:=0;

anchor( "vc", (xpart(point 2 of paths[0]),0));


endglyph;
