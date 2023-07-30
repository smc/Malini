input glyph;
beginglyph;
% Ra
input ./glyphs/include/റ;
p:=p+1;
input ./glyphs/include/റ;
xshift = 0.25mw;
yshift = -1.05m;
paths[p] := paths[p] shifted (xshift,yshift  ) xscaled 0.7 yscaled 0.7;
strokes[p] := strokes[p] shifted (xshift, yshift ) xscaled 0.7 yscaled 0.7;

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "right", (point 4 of paths[1]));
endglyph;
