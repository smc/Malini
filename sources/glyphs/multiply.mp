input glyph;
beginglyph;
p:=0;
r := 0.8;
z0=(0, 0.9s);
z1=(x0 + r*sw, 0.1s);

paths[p] = z0--z1;
pen_stroke(
    cut(thick_vertical_nib, rel 90)(0)
    cut(thick_vertical_nib, rel 90)(1)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0=(0, 0.1s);
z1=(x0 + r*sw, 0.9s);
paths[p] = z0--z1;
pen_stroke(
    cut(thick_vertical_nib, rel 90)(0)
    cut(thick_vertical_nib, rel 90)(1)
)(paths[p])(strokes[p]);


endglyph;
