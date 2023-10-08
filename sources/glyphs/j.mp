input glyph;
beginglyph;
clearxy;

input ./include/dotlessj;

p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(xpart(point 0 of paths[0]), 1.33s);
strokes[p] = paths[p];

absolute_position:=1;
lbearing:=sw/3*0.3;
rbearing:=sw/3*0.4;
anchor( "top", (xpart(point 0 of paths[0]), 0.9X));
endglyph;
