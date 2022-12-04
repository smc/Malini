input glyph;
beginglyph;
z0= (0.05sw, X);
z1=(0,  X/2);
z2=(x0 + 0.05sw, 0);

paths[0] = l_vstem;
pen_stroke(
 nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
anchor( "top", (xpart(point 0 of paths[0]), X));
endglyph;
