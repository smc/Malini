input glyph;
beginglyph;

paths[0] := l_vstem shifted(0, -s/2) ;
paths[1] := u_arch;
paths[2] := r_vstem xyscaled(-1, -1) shifted(xpart(point 4 of paths[1]) + xpart(point 1 of r_vstem), s);


pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib)(infinity)
    nib(top_nib)(3)
    nib(middle_down_nib)(1,2)
    nib(end_nib scaled 3)(0)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[2])(0)
    nib(thick_vertical_nib)(1,2)
    nib(end_nib scaled 3)(infinity)
)(paths[2])(strokes[2]);

endglyph;
