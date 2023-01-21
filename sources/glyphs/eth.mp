input glyph;
beginglyph;
% This is glyph '6'
z0 = (x3 - Xw/10, X);
z1 = (0, y4/2);
z2 = (x1 + Xw/3, 0);
z3 = (x2 + Xw/4, y1);
z4 = (x2, 0.6X);
z5 = (thick*0.13, y4/2);
paths[0] := z0..z1..z2..z3..z4..{dir -95}z5;
paths[0] := paths[0] xyscaled(-1, 1) shifted(x3,0);

pen_stroke(
    nib(middle_down_nib)(1,5)
    nib(top_nib)(4)
    nib(down_nib)(2)
    nib(top_nib)(0)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
% Stroke at top
clearxy;
z0=(xpart(point 2 of paths[0]), ypart(point 0.5 of paths[0]));
z1=(xpart(point 1 of paths[0]), X);
paths[1]:=z0..z1;
pen_stroke(
    nib(thick_nib rotated terminalangle 0 of paths[1])(0)
    nib(thin_nib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
strokes[1]:=point 0 of strokes[1] --point 1 of strokes[1] --point 2 of strokes[1] --point 3 of strokes[1] --cycle;

endglyph;