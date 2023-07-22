input glyph;
beginglyph;
input ./glyphs/include/സ;
p:=p+1;

% Ra
input ./glyphs/include/റ;
paths[p] := paths[p] shifted (0.3mw, -1.05m ) xscaled 0.75 yscaled 0.75;
strokes[p] := strokes[p] shifted (0.3mw, -1.05m ) xscaled 0.75 yscaled 0.75;
p:=p+1;
paths[p] := paths[p-1] shifted (mw, 0);
strokes[p] := strokes[p-1] shifted (mw, 0);

anchor( "vc", point 3 of paths[0]);
anchor( "right", (point 4 of paths[p]));
endglyph;
