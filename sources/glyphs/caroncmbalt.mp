input glyph;
beginglyph;

% This glyph does not slant. Reset slant value
slant := 0;

soften:=0;

clearxy;
z0 = (0, s);
z1 = (x0, y0-s/3);
paths[p] = z0{dir -75}..z1;
pen_stroke(
    cut(thick_nib, rel 90)(0)
    nib(thin_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

strokes[p] := reverse strokes[p];

anchor( "top", point 1 of paths[0] + (-thick*2, s/2));

endglyph;
