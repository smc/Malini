input glyph;
beginglyph;
p:=0;
paths[p] := pa_mouth;
strokes[p] := va_mouth_stroke(paths[p]);

z5=point infinity of paths[0];
z6=(x5 + 0.75mw, y5);

paths[1] := z5{dir 20}..{dir 20}z6 && ra shifted (xpart(z6) - mw/4, -thick/4);
paths[1] := paths[1]..{dir 210}(xpart(point 2 of paths[1]), -descent);

pen_stroke(
    nib(thinnib)(2,4,6)
    nib(terminalnib rotated terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated (terminalangle infinity of paths[1]))(infinity)
)(paths[1])(strokes[1]);
% tail
z12 = (xpart (point 2 of paths[1]), -descent);
z13 = (x12 + 0.6mw, y12);
z14 = (xpart (point 4 of paths[1]) + thick/2, y13);
paths[2] = z12{dir 20}..z13..{dir 20}z14;
pen_stroke(
    nib(thinnib)(1)
    nib(terminalnib rotated terminalangle 0 of paths[2])(0)
    nib(terminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);

rbearing:=rbearing - thick;

anchor( "vc", point 0.5 of paths[1]);
anchor( "bottom", point infinity of paths[1]);
anchor( "right", point infinity of paths[1]);
endglyph;
