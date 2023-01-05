input glyph;
beginglyph;
p:=0;
r := 0.8;
z0=(0, s);
z1=(x0 + r*sw, 0);

paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib scaled (1+sind(45)/2))(0)
    nib(thick_vertical_nib scaled (1+sind(45)/2))(1)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0 + r*sw, s);
paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib scaled (1+sind(45)/2))(0)
    nib(thick_vertical_nib scaled (1+sind(45)/2))(1)
)(paths[p])(strokes[p]);


endglyph;
