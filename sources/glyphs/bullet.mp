input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
paths[p] = fullcircle scaled (thick*2) shifted(thick/2, s/2);
strokes[p] = paths[p];
endglyph;
