input glyph;
beginglyph;
input ./glyphs/include/ഷ;

p:=p+1;
input ./glyphs/include/പ;

xshift := 0.75mw;
yshift := -0.75m;

for i=4 upto 6:
  paths[i] := paths[i] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
  strokes[i] := strokes[i] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
endfor;

xoffset = xpart point 0 of strokes[p]- xpart point 0 of strokes[2];
strokes[p] := strokes[p] shifted (-xoffset, 0);

anchor( "vc", point 0.5 of paths[1]);

endglyph;
