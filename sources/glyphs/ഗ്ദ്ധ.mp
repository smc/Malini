input glyph;
beginglyph;
paths[p] := subpath (0, 4) of ga;
z5 = (xpart point infinity of paths[p], m-overshoot);
z6 = (x5 + mw/2.5, (y5+y7)/2);
z7 = (x6 - mw/3, (y6+y8)/2);
z8 = (x7 + mw/2.5, (y7+y9)/2);
z9 = (x8 - mw/2, undershoot);
paths[p] := paths[p].. z6{down}..{left}z7{right}..z8{down}..{dir 160}z9;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[0])(0)
   nib(middle_up_nib)(1)
   nib(down_nib)(2)
   nib(middle_down_nib)(3, 5)
   nib(top_nib)(4)
   nib(end_nib rotated 90)(6)
   nib(middle_down_nib)(7)
   nib(end_nib rotated terminalangle infinity of paths[p])(8)
)(paths[p])(strokes[p]);

% Connector
clearxy;
p:=p+1;
z0=(xpart point 7.5 of paths[0], undershoot);
z1=(x0 + .5mw, 0.4m);
z2=(x1, m);
paths[1] = z0{right}..{up}z1---z2;
pen_stroke(
    nib(end_nib rotated terminalangle infinity of paths[p-1])(0)
    nib(thin_vertical_nib)(1)
    nib(thin_vertical_nib)(2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib rotated -45)(4)
)(paths[2])(strokes[2]);

anchor( "vc", point 5 of paths[0]);
anchor( "right", point 2.3 of paths[2]);
endglyph;
