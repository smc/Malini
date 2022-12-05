input glyph;
beginglyph;

paths[0] := u_arch;

clearxy;
z0=(0, s);
z1=(0, y0-X/2);
z2=(x0, 0);
z3=(x2 - sw/4, -descent);
z4=(x3 - sw/2, y3 + s/4);
paths[1] = z0--z1{down}..z2..z3..z4;
paths[1] := paths[1] shifted(xpart(point 4 of paths[0]),0);
pen_stroke(
    nib(middle_up_nib)(infinity)
    nib(top_nib)(3)
    nib(middle_down_nib)(1)
    nib(end_nib scaled 3)(0)
)(paths[0])(strokes[0]);

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
    nib(down_nib rotated( 90 + terminalangle 3 of paths[1]))(3)
    nib(end_nib rotated terminalangle 4 of paths[1])(4)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 3.5 of paths[0]), X));
endglyph;
