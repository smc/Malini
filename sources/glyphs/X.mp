input glyph;
beginglyph;
p:=0;
r := 0.8;
z0=(0, X);
z1=(x0 + r*Xw, 0);

paths[p] = z0--z1;
pen_stroke(
    nib(thick_vertical_nib scaled (1+sind(45)/2))(0)
    nib(thick_vertical_nib scaled (1+sind(45)/2))(1)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0 + r*Xw, X);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_vertical_nib scaled (1+sind(45)/2))(0)
    nib(thin_vertical_nib scaled (1+sind(45)/2))(1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0] + (thin/2, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_top_thin shifted (point 1 of paths[1] - (3/4thin, 0));
strokes[p] := serif_stroke(paths[p]);


p:=p+1;
paths[p] := serif_bottom_thick shifted (point 1 of paths[0] - (3/4thin, 0));
strokes[p] := serif_stroke(paths[p]);

p:=p+1;
paths[p] := serif_bottom_thin shifted (point 0 of paths[1] + (thin, 0));
strokes[p] := serif_stroke(paths[p]);

endglyph;
