input glyph;
beginglyph;

input ./glyphs/include/left_arch;

% Second arch
p:=p+1;
input ./glyphs/include/middle_arch;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

p:=p+1;
input ./glyphs/include/right_arch_with_eye;

paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", (xpart(point 1 of paths[1]),0));
endglyph;
