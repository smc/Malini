input glyph;
beginglyph;
input ./glyphs/include/left_arch_with_eye;

p:=p+1;
input ./glyphs/include/right_arch_with_eye;

paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

for i=0 upto p:
    paths[i] := paths[i] shifted (-mw*2, -m)  scaled 0.75;
    strokes[i] := strokes[i] shifted (-mw*2, -m)  scaled 0.75;
endfor;

absolute_position := 1;
rbearing:=0;
endglyph;
