input glyph;
beginglyph;
clearxy;
% This glyph does not slant. Reset slant value
slant := 0;
r = thick*1.5;
paths[p] = circle(r);
paths[p]:= paths[p] shifted(0, X-r);
strokes[p] = paths[p];

anchor( "top", (xpart(point 2 of paths[0]), X));
endglyph;
