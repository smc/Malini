input glyph;
beginglyph;

input ./glyphs/include/സ;
p:=p+1;
clearxy;
input ./glyphs/include/ക;

paths[p]:=paths[p] shifted (0.8mw, -1m) scaled 0.8 ;
strokes[p]:=strokes[p] shifted (0.8mw, -1m) scaled 0.8 ;

anchor( "vc", (x3,0));

anchor( "right", point 5 of paths[p]);

endglyph;
