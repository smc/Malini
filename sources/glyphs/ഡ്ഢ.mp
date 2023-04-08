input glyph;
beginglyph;
input ./glyphs/include/ഡ;
p:=p+1;
input ./glyphs/include/ഢ;

for i=p-1 upto p:
    paths[i]:=paths[i] shifted (mw*0.5, -1.1m) xscaled 0.75  yscaled 0.75;
    strokes[i]:=strokes[i] shifted (mw*0.5, -1.1m) xscaled 0.75  yscaled 0.75;
endfor;

anchor( "vc", point 5 of paths[0]);

endglyph;
