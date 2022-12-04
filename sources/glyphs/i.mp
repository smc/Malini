input glyph;
beginglyph;
z0= (0, s);
z1=(x0,  s/2);
z2=(x0, 0);

paths[0] = z0--z1--z2;
paths[1] = fullcircle scaled (thick*1.5) shifted(x0, 1.33s);

pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
strokes[1] = paths[1];
endglyph;
