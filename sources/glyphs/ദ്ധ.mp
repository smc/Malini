input glyph;
beginglyph;

input ./glyphs/include/ദ;

% Connector
clearxy;
p:=p+1;
z0=point infinity of paths[0];
z1=(x0 + mw*0.75, 0.4m);
z2=(x1, m);
paths[1] = z0{dir angle(direction infinity of paths[p-1])*-1}..{up}z1---z2;
pen_stroke(
    nib(end_nib rotated terminalangle 6 of paths[p-1])(0)
    nib(thin_vertical_nib)(1,2)
)(paths[p])(strokes[p]);

p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

anchor( "vc", point 2 of paths[1]);
anchor( "right", point 2.3 of paths[p]);

endglyph;
