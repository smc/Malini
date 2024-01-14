input glyph;
beginglyph;

r = thick*1.66;
paths[p] = circle(r);
paths[p]:= paths[p] shifted(0, s);
strokes[p] = paths[p];

p:=p+1;
z0 = (x1, ascent);
z1 = (xpart point 4 of paths[p-1] + r/2, ypart point 3 of paths[p-1]+r/2);
paths[p] = z0{dir 220}..{dir -10}z1;
pen_stroke(
    nib(thinterminalnib rotated terminalangle 0 of paths[p])(0,1)
    nib(thick_nib scaled 1.2 rotated terminalangle infinity of paths[0])(infinity)
)(paths[p])(strokes[p]);

strokes[p] := point 0 of strokes[p]{dir 210}
    .. {right}point 3 of strokes[p-1]
    -- point 0.56 of strokes[p-1] {dir 115}
    .. {dir 30}point 3 of strokes[p]
    -- cycle;

strokes[p] := reverse strokes[p];
endglyph;
