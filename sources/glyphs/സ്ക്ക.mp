input glyph;
beginglyph;

input ./glyphs/include/സ;
p:=p+1;
clearxy;
input ./glyphs/include/ക്ക;

for i=2 upto p:
    paths[i]:=paths[i] shifted (0.3mw, -1.05m) scaled 0.8 ;
    strokes[i]:=strokes[i] shifted (0.3mw, -1.05m) scaled 0.8 ;
endfor;


anchor( "vc", (xpart point 3 of paths[0],0));

endglyph;
