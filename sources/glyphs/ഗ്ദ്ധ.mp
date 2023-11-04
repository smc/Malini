input glyph;
beginglyph;

input ./glyphs/include/ഗ;

paths[p] := subpath (0, 5) of paths[p];
clearxy;
z6 = (xpart point infinity of paths[p] + mw/2.5, (m-overshoot+y7)/2);
z7 = (x6 - mw/3, (y6+y8)/2);
z8 = (x7 + mw/2.5, (y7+y9)/2);
z9 = (x8 - mw/2, 2undershoot);
paths[p] := paths[p].. z6{down}..{left}z7{right}..z8{down}..{dir 150}z9;
paths[p] := subpath(0, 8.5) of paths[p];
pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib rotated -20)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3, 4, 5)
   nib(top_nib)(5)
   nib(end_nib rotated 90)(7)
   nib(middle_down_nib)(8)
   nib(end_nib rotated terminalangle infinity of paths[p])(9)
)(paths[p])(strokes[p]);

% Connector
clearxy;
p:=p+1;
z0= (xpart point 7 of paths[p-1], ypart point 2 of paths[p-1]);
z1=(x0 + .75mw, 0.4m);
z2=(x1, m);
paths[1] = z0{dir -5}..{up}z1---z2;
pen_stroke(
    cut(down_nib, 90)(0)
    nib(thin_vertical_nib)(1)
    nib(thin_vertical_nib)(2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", point 0.5 of paths[p-1]);
anchor( "right", point 2.3 of paths[p]);
endglyph;
