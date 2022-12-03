input glyph;
beginglyph;
z0=(0.1Xw , X - 0.05X);
z1=(x0 + .55Xw, y0);
z3=(x0, 0.5X);
z4=(x0 + Xw/2, X/3);
z5=(0, 0.1X);

paths[0] = z0--z1;
paths[1] = z0--z3{dir 45}..z4..{dir 150}z5;

pen_stroke(
    nib(top_nib)(0,1)
)(paths[0])(strokes[0]);

pen_stroke(
      nib(middle_up_nib)(0,1)
      nib(middle_down_nib)(2)
      nib(end_nib rotated 60)(3)
)(paths[1])(strokes[1]);

endglyph;