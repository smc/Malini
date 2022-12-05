input glyph;
beginglyph;
clearxy;
z0=(0, s);
z1=(0, y0-X/2);
z2=(x0, 0);
z3=(x2 - sw/4, -descent);
z4=(x3 - sw/3, y3 + s/4);
paths[0] = z0--z1{down}..z2..z3..z4;

pen_stroke(
    nib(thick_vertical_nib)(0,1,2)
    nib(down_nib rotated( 90 + terminalangle 3 of paths[0]))(3)
    nib(end_nib rotated terminalangle 4 of paths[0])(4)
)(paths[0])(strokes[0]);
anchor( "top", (xpart(point 0 of paths[0]), X));
endglyph;
