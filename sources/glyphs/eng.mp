input glyph;
beginglyph;

paths[0] := r_vstem;
paths[1] := subpath(0, 3) of n_arch shifted(xpart(point 1 of r_vstem),0);

pen_stroke(
   nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[0])(0)
    nib(thick_vertical_nib)(1,2)
    nib(end_nib scaled 3)(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
)(paths[1])(strokes[1]);
clearxy;
z0=point infinity of paths[1];
z1=(x0-s/3, -descent);
paths[2]=z0{dir -95}..{left}z1;
pen_stroke(
    nib(middle_down_nib)(0)
    cut(end_nib scaled 0.5 rotated 90, 90)(1)
)(paths[2])(strokes[2]);
endglyph;
