input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
paths[0] = (0, s/2)--(sw*0.8, s/2);
paths[1] = fullcircle scaled (thick*1.2) shifted(xpart point 0.5 of paths[0], 0.75s);
paths[2] = fullcircle scaled (thick*1.2) shifted(xpart point 0.5 of paths[0], 0.25s);

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[1] = paths[1];
strokes[2] = paths[2];
endglyph;
