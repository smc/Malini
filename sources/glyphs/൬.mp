input glyph;
beginglyph;
input ./glyphs/include/left_arch;

% Second arch
p:=p+1;
input ./glyphs/include/middle_arch;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p] := strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

p:=p+1;
input ./glyphs/include/right_arch;
paths[p] := subpath(0, 3) of paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;

z0 = point 3 of paths[p-1];
z1 = (x0 - 0.75mw, -descent);

paths[p] = z0{dir angle(direction infinity of paths[p-1])}.. {left}z1 ;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(end_nib rotated terminalangle 1 of paths[p])(1)
)(paths[p])(strokes[p]);

endglyph;
