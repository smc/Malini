input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
z0 = (thick/4, m/4);
z1 = (x0, -m/6);

paths[0] = z0{right}..{dir -135}z1;
pen_stroke(
    nib(thicknib scaled 1.25 rotated terminalangle 0 of paths[0])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
anchor( "bottom", point 0 of paths[0]);
endglyph;
