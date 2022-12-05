input glyph;
beginglyph;

paths[1] := a_loop shifted (sw/3, 0);
paths[0] := subpath(1,4) of r_vstem xyscaled(-1, -1) shifted(xpart(point 0 of paths[1]) + xpart(point 1 of r_vstem), s);
clearxy;
z0 = (xpart(point 3 of paths[1]) - sw/4, -descent/2);
z1 = (xpart(point 2 of paths[1])  - sw/3, s/2);
z2 = (xpart(point 1 of paths[1]), ascent*0.95);
z3 = (xpart(point 0 of paths[1]) + sw/2, s/2);
z4 = (xpart(point 0 of paths[0]) + sw/4, ypart(point 0 of paths[0]) - sw/6);
paths[0] := z0..z1..z2{right}..z3{down}..z4..paths[0];
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(3)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;