input glyph;
beginglyph;
z0 = (0, thick/2);
z1 = (0, X);
z2 = (3/4X, X);
z3 = (3/4X, thick/2);
z4 = z0  ;
paths[0] = z0-- z1--z2--z3--z4;
paths[1] = z0--z2;
paths[2] = z1--z3;

pen_stroke(
    nib(thicknib rotated terminalangle 0 of paths[p])(0)
    nib(thicknib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thinterminalnib rotated terminalangle 0 of paths[1])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(thinterminalnib rotated terminalangle 0 of paths[2])(0)
    nib(thinterminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);
endglyph;
