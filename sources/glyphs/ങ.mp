input glyph;
beginglyph;

clearxy;

input ./glyphs/include/left_arch_with_eye;

clearxy;
p:=p+1;
input ./glyphs/include/_ദ;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0) ;
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0) ;

anchor( "vc", point 5 of paths[0]);

anchor( "right", point 5.6 of paths[2]);

endglyph;
