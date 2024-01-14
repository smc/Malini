input glyph;
beginglyph;

r = thick*1.66;
paths[p] = circle(r);
paths[p]:= paths[p] shifted(0, ascent-r);
strokes[p] = paths[p];

p:=p+1;
z0 = (x1, s);
z1 = (xpart point 4 of paths[p-1] + r/2, ypart point 3 of paths[p-1]+r/2);
paths[p] = z0{dir 30}..{dir 190}z1;
pen_stroke(
    nib(thinterminalnib rotated terminalangle 0 of paths[p])(0,1)
    nib(thick_nib scaled 1.2 rotated terminalangle infinity of paths[0])(infinity)
)(paths[p])(strokes[p]);

strokes[p] := point 0 of strokes[p]{dir 30}
    .. {left}point 1 of strokes[p-1]
    -- point 2.56 of strokes[p-1] {dir -30}
    .. {dir 210}point 3 of strokes[p]
    -- cycle;

strokes[p] := reverse strokes[p];

clearxy;
p:=p+1;
paths[p] = paths[p-2] shifted (sw/2,0);
strokes[p] = strokes[p-2] shifted (sw/2,0);
clearxy;
p:=p+1;
paths[p] = paths[p-2] shifted (sw/2,0);
strokes[p] = strokes[p-2] shifted (sw/2,0);

endglyph;
