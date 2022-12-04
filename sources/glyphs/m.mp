input glyph;
beginglyph;


paths[0] := r_vstem;

paths[1] := n_arch shifted(xpart(point 1 of r_vstem) + thick/4, 0) xyscaled(0.8, 1);
paths[2] := n_arch xyscaled(0.8, 1) shifted(xpart(point 3 of paths[1]), 0)  ;

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
)(paths[2])(strokes[2]);
endglyph;
