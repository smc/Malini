input glyph;
beginglyph;
input ./glyphs/include/സ;
p:=p+1;

% Ra
input ./glyphs/include/റ;
xshift = 0.6mw;
yshift = -1.05m;
paths[p] := paths[p] shifted (xshift, yshift ) xscaled 0.75 yscaled 0.75;
strokes[p] := strokes[p] shifted (xshift, yshift ) xscaled 0.75 yscaled 0.75;

p:=p+1;
paths[p] := paths[p-1] shifted (0.9mw, 0);
strokes[p] := strokes[p-1] shifted (0.9mw, 0);

anchor( "vc", point 3 of paths[0]);
anchor( "right", (point 4 of paths[p]));
endglyph;
