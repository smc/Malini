input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
z0= (0, X);
z1=( x0+X/4, y0 - 0.6X);
z2=( x1+X/4, y1 - 0.6X);

paths[0] = z0--z2 ;

pen_stroke(
    nib(thick_nib)(0,1)
)(paths[0])(strokes[0]);

endglyph;
