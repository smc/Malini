input glyph;
beginglyph;

input ./glyphs/include/വ;

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", (xpart(point 1 of paths[2]),0));
anchor( "right", point infinity of paths[p-1] - (mw/5,0) );

endglyph;
