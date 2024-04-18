input glyph;
beginglyph;
input ./glyphs/include/സ;
p:=p+1;
input ./glyphs/include/പ;

xshift := 1.2mw;
yshift := -0.75m;

for i=2 upto 4:
  paths[i] := paths[i] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
  strokes[i] := strokes[i] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
endfor;

anchor( "vc", point 0.5 of paths[1]);

endglyph;
