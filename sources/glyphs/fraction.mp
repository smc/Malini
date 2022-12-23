input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
z0= (X/2, X);
z1=( X/4, y0 - 0.6X);
z2=( 0, y1 - 0.6X);

paths[0] = z0--z1--z2 ;

pen_stroke(
 nib(thick_nib)(0,1, 2)
)(paths[0])(strokes[0]);

endglyph;
