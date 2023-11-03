input glyph;
beginglyph;
input ./glyphs/include/ത_;

p:=p+1;
clearxy;
input ./glyphs/include/_ത;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

paths[p] := (subpath(0,6.8) of paths[p]);

pen_stroke(
    cut(middle_up_nib, -45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% ഋ sign
z0 = point infinity of paths[p-1];
z1 = (x0 - 0.75mw, -descent);
z2 = (x1 - mw/3, (y1+y3)/2);
z3 = (x1, y2+m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir angle(direction infinity of paths[p-1])}.. {left}z1..z2{up}..z3{right}..z4;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point infinity of paths[0]),0));
endglyph;
