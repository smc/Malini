input glyph;
beginglyph;

paths[0] := r_vstem shifted(s*0.2, 0);
paths[1] := r_vstem shifted(s*0.9, 0);
paths[2] := r_vstem crotated(90) shifted(s*0.4, s/2);

pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[0])(0)
    nib(thick_vertical_nib)(1,2)
    nib(end_nib scaled 3)(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[1])(0)
    nib(thick_vertical_nib)(1,2)
    nib(end_nib scaled 3)(infinity)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[2])(0)
    nib(thin_horizontal_nib)(1,2,3)
)(paths[2])(strokes[2]);
endglyph;
