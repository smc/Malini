input glyph;
beginglyph;

input ./glyphs/include/ദ;
paths[p] := subpath(0, 5.5) of paths[p];

strokes[p]:= subpath(0, 6.5) of strokes[p] -- subpath(8.5, length(strokes[p])) of strokes[p] --cycle;

% Connector
clearxy;
p:=p+1;
z0= (xpart point 4 of paths[p-1], 2*undershoot);
z1=(x0 + .75mw, 0.4m);
z2=(x1, m);
paths[1] = z0{dir -10}..{up}z1---z2;
pen_stroke(
    cut(down_nib, 90)(0)
    nib(thin_vertical_nib)(1)
    nib(thin_vertical_nib)(2)
)(paths[p])(strokes[p]);

p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", point 2 of paths[1]);
anchor( "right", point 2.3 of paths[p]);

endglyph;
