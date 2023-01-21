input glyph;
beginglyph;
% This glyph does not slant. Reset slant value
slant := 0;
z0= (0, X);
z2=( x0, -descent*0.8);

paths[0] = z0--z2 ;

pen_stroke(
    nib(thick_nib)(0,1)
)(paths[0])(strokes[0]);

endglyph;
