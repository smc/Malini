input glyph;
beginglyph;
p:=0;
paths[p] := pa_mouth shifted (mw/3, 0);
strokes[p] := va_mouth_stroke(paths[p]);


z5=point infinity of paths[0];
z6=(x5 + 0.75mw, y5);

paths[1] := z5{dir 20}..{dir 20}z6 && ra shifted (xpart(z6) - mw/4, -thick/4);
paths[1] := subpath(0,4) of paths[1];
pen_stroke(
    nib(thinnib)(2,4,6)
    nib(terminalnib rotated terminalangle 0 of paths[1])(0)
    nib(thinterminalnib rotated (terminalangle infinity of paths[1]))(infinity)
)(paths[1])(strokes[1]);

clearxy;
% ra sign
z0 = point 4 of paths[1];
z1 = ( xpart(point 0.6 of paths[1]), -descent - thick);
z2 = (0, m/3);
z3 = (xpart(point 1 of paths[0])-mw/4, m);
paths[2] = z0{dir -98}..z1..z2..{dir 60}z3;
pen_stroke(
    nib(thinnib)(2, 4)
    nib(thinterminalnib rotated terminalangle 0 of paths[2])(0)
    nib(terminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);

anchor( "vc", point 0.5 of paths[1]);
anchor( "right", point 0.5 of paths[2]);
endglyph;
