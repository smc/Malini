input glyph;
beginglyph;

input ./glyphs/include/ണ;

% the connector curve
clearxy;
z0=point infinity of paths[p-1] + (thick/2-thin/2, thin/2);
z1=(x0, ypart(point 3 of paths[1]));
z2=(x1 + mw/4, 0.95m);
z3=(x2 + mw/4, m/2);
z4=(x3 + mw/4, 0.05m);
z5=(x4 + mw/4, mw/2);
z6=(x5, m-thin/2);
paths[p] := z0---z1..z2..z3{down}..z4{right}..z5---z6;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(thin_vertical_nib)(5)
    cut(thin_vertical_nib, -45)(6)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p]:=right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
anchor( "vc", (xpart(point 1 of paths[2]),0));
anchor( "right", point 2.25 of paths[3]);
endglyph;
