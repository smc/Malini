input glyph;
beginglyph;

paths[0] := u_arch ;
paths[1] := r_vstem xyscaled(-1, -1) shifted(xpart(point 4 of paths[0]) + xpart(point 1 of r_vstem)+thick/4, s);

pen_stroke(
    nib(middle_up_nib)(3)
    nib(top_nib)(1)
    nib(middle_down_nib)(0,1)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 2.5 of paths[0]), X));
endglyph;
