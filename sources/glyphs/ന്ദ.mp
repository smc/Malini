input glyph;
beginglyph;
input ./glyphs/include/left_arch;

clearxy;
p:=p+1;
input ./glyphs/include/_ദ;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0) ;
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0) ;

anchor( "vc", point 0 of paths[p]);
anchor( "right", point 5.5 of paths[p]);

endglyph;
