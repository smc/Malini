input glyph;
beginglyph;
z0=(0, s);
z1=(x0 + sw/3, 0);
z2=(x1 + sw/3, y0);
paths[0] = z0--z1 ;
paths[1] = z1--z2 ;
paths[2] = paths[0] shifted (2sw/3,0);
paths[3] = paths[1] shifted (2sw/3,0);;
pen_stroke(
     nib(thick_vertical_nib scaled 0.75)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);
pen_stroke(
     nib(thick_vertical_nib scaled 0.75)(0,1,2)
)(paths[2])(strokes[2]);
pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[3])(strokes[3]);
endglyph;
