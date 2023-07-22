input glyph;
beginglyph;
input ./glyphs/include/സ;

p:=p+1;
clearxy;
input ./glyphs/include/ത;

paths[p]:=paths[p] shifted (mw, -1.1m) scaled 0.8 ;
strokes[p]:=strokes[p] shifted (mw, -1.1m) scaled 0.8 ;

anchor( "vc", (x3,0));

endglyph;
