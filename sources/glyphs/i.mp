input glyph;
beginglyph;

input ./include/dotlessi;

p:=p+1;
paths[p] = fullcircle scaled (thick*1.5) shifted(x1, 1.33s);

strokes[p] = paths[p];

lbearing:=sw/3*0.3;
rbearing:=sw/3*0.3;
endglyph;
