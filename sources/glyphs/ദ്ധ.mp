input glyph;
beginglyph;

paths[p] = da;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib scaled 0.6 rotated terminalangle 6 of paths[0])(6)
)(paths[p])(strokes[p]);

% Connector
clearxy;
p:=p+1;
z0=point 5.5 of paths[0];
z1=(x0 + mw/2, 0.4m);
z2=(x1, m);
paths[1] = z0{right}..{up}z1---z2;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
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
