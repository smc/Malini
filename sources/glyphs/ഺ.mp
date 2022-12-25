input glyph;
beginglyph;
z0=(x1 + mw/4, m);
z1=(0, 0);
paths[0] = z0--z1;

pen_stroke(
     nib(thick_vertical_nib)(0,1)
)(paths[0])(strokes[0]);

clearxy;
z0 = (0, thick*sind(45)/2);
z1=(x0+.75Xw, y0);

paths[1] = z0--z1 ;
pen_stroke(
     nib(thick_horizontal_nib)(0,1)
)(paths[1])(strokes[1]);

clearxy;
z0=(xpart point 0.5 of paths[1], 0);
z1=(x0, -descent);
paths[2] = z0--z1 ;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[2])(strokes[2]);

endglyph;