input glyph;
beginglyph;
z0=(0, X);
z1=(x0 + Xw/3, 0);
z2=(x1 + Xw/3, y0);
paths[0] = z0--z1 ;

paths[2] := paths[0] shifted (0.5Xw, 0);
paths[1] =  z1--(point .3 of paths[2]) ;
paths[3] := (z1--z2) shifted (0.5Xw, 0);
pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
     nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[2])(strokes[2]);
pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[3])(strokes[3]);
anchor( "top", (xpart(point 1 of paths[1]), 1.2X));
endglyph;
