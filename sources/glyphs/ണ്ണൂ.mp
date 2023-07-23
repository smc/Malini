input glyph;
beginglyph;
input ./glyphs/include/ണ;

xshift := 0.6mw;
yshift := -m;


for i=1 upto 4:
  p:=p+1;
  paths[p] = paths[p-4] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
  strokes[p] = strokes[p-4] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
endfor;

xshift := xpart point infinity of paths[p] + thick*0.8 - thin*0.8;
input ./glyphs/include/right_arch_with_tail;
paths[p] := paths[p] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
strokes[p] := strokes[p] shifted (xshift , yshift) xscaled 0.8 yscaled 0.75;
rbearing:=0;
endglyph;
