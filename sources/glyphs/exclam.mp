input glyph;
beginglyph;
z0= (0, 0.9X);
z1=( x0, y0 - 0.7X);

paths[0] = z0..z1;
paths[1] = fullcircle scaled (thick*1.5) shifted(0, 0);

pen_stroke(
    nib(thicknib scaled 1.2 rotated terminalangle 0 of paths[0])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
strokes[1] = paths[1];
lbearing := lbearing+thick;
endglyph;
