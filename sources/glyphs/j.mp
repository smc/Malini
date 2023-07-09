input glyph;
beginglyph;
clearxy;

input ./include/dotlessj;

p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(xpart(point 0 of paths[0]), 1.33s);
strokes[p] = paths[p];


% Serifs
p:=p+1;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);
lbearing:=lbearing/2;

anchor( "top", (xpart(point 0 of paths[0]), 0.9X));
endglyph;
