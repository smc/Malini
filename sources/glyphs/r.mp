input glyph;
beginglyph;

paths[0] := r_vstem;
paths[1] := r_arch shifted(xpart(point 1 of r_vstem), 0);

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib rotated 60)(2)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 1.5 of paths[1]), X));
anchor( "bottom", (xpart(point 1.5 of paths[1]), 0));
endglyph;
