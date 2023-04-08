input glyph;
beginglyph;
input ./glyphs/include/ഡ;
p:=p+1;
input ./glyphs/include/ഡ;
for i=p-1 upto p:
    paths[i]:=paths[i] shifted (mw*0.7, -1.1m) xscaled 0.75  yscaled 0.75;
    strokes[i]:=strokes[i] shifted (mw*0.7, -1.1m) xscaled 0.75  yscaled 0.75;
endfor;

anchor( "vc", point 5 of paths[0]);

endglyph;
