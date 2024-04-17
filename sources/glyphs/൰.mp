input glyph;
beginglyph;


input ./glyphs/include/left_arch_dha;

clearxy;
p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

p:=p+1;
clearxy;
% bottom tail
z0 = point 1.5 of paths[p-2];
z1 = (x0 - mw/4, -0.75descent);
paths[p] = z0{down}.. {left}z1;
pen_stroke(
    cut(thick_vertical_nib, -45)(0)
    nib(down_nib)(1)
)(paths[p])(strokes[p]);


endglyph;
