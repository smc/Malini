input glyph;
beginglyph;
z0=(0, X);
z1=(x0, X/2);
z2=(x1, 0);

paths[0] = z0{down}..z1..{down}z2;

z3=(xpart(point 2 of l_vstem), thick*thin/2);
z4=(x3 + Xw/2, y3);

paths[1] = z3--z4;
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);
anchor( "top", (xpart(point 0 of paths[0]), X));
anchor( "bottom", (xpart(point 0.5 of paths[1]), 0));
endglyph;
