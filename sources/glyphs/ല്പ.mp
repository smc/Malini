input glyph;
beginglyph;

input ./glyphs/include/ല;

p:=p+1;
input ./glyphs/include/പ;

xshift := 0.175mw;
yshift := -0.75m;

for i=4 upto 6:
  paths[i] := paths[i] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
  strokes[i] := strokes[i] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
endfor;

% Leave a gap
strokes[p] := point 0 of strokes[p]
    -- (xpart point 1 of strokes[p], -undershoot/2 )
    -- (xpart point 2 of strokes[p], -undershoot/2)
    -- point 3 of strokes[p]
    -- cycle;

anchor( "vc", point 0.5 of paths[2]);
anchor( "right", point 0 of paths[p] - (mw/5,0) );

endglyph;