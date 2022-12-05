input glyph;
beginglyph;

paths[0] := u_arch ;
paths[1] := r_vstem xyscaled(-1, -1) shifted(xpart(point infinity of paths[0]) + xpart(point 1 of r_vstem), s);

pen_stroke(
    nib(middle_up_nib)(infinity)
    nib(top_nib)(3)
    nib(middle_down_nib)(1)
    nib(end_nib scaled 3)(0)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[1])(0)
    nib(thick_vertical_nib)(1,2)
    nib(end_nib scaled 3)(infinity)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 3 of paths[0]), X));
endglyph;
