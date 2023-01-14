input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
w := X/4;
z0= (1.5w, X);
z1=( x0-w/2, y0 - X/2);
z2=( x1-w/2, y1 - X/2);

paths[0] = z0--z2 ;
paths[1] = paths[0] shifted (X/3, 0) ;
paths[2] = (0, X/3)--(0.85Xw, X/3);
paths[3] = paths[2] shifted (0, X/3);

pen_stroke(
    cut(thick_vertical_nib, rel 90)(0,1,2)
)(paths[0])(strokes[0]);

pen_stroke(
   cut(thick_vertical_nib, rel 90)(0,1,2)
)(paths[1])(strokes[1]);

pen_stroke(
   cut(thick_horizontal_nib, rel 90)(0,1,2)
)(paths[2])(strokes[2]);

pen_stroke(
   cut(thick_horizontal_nib, rel 90)(0,1,2)
)(paths[3])(strokes[3]);

endglyph;
