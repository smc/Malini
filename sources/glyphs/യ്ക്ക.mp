input glyph;

beginglyph;
input ./glyphs/include/യ;

p:=p+1;
clearxy;
input ./glyphs/include/ക്ക;

for i=1 upto p:
    paths[i]:=paths[i] shifted (0.1mw, -1.1m) scaled 0.8 ;
    strokes[i]:=strokes[i] shifted (0.1mw, -1.1m) scaled 0.8 ;
endfor;

rbearing:=0;
anchor( "vc", (x1,0));
anchor( "right", point 8.25 of paths[0]);

endglyph;
