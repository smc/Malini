input glyph;
beginglyph;

paths[0] = l_vstem ;
paths[1] := n_arch shifted(xpart(point 0 of l_vstem),0);

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
     nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
)(paths[1])(strokes[1]);
endglyph;
