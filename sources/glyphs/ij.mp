input glyph;
beginglyph;

input ./include/dotlessi;

p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(x1, 1.33s);

strokes[p] = paths[p];

% j
clearxy;
p:=p+1;
input ./include/dotlessj;

paths[p] := paths[p] shifted (3*thick, 0);
strokes[p] := strokes[p] shifted (3*thick, 0);

p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(xpart(point 0 of paths[p-1]), 1.33s);
strokes[p] = paths[p];

lbearing:=thick*condense*0.3;
rbearing:=thick*condense*0.3;

endglyph;
