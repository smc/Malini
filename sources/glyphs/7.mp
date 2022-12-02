input glyph;
beginglyph;
z0=(0, X - thick*0.7/2);
z1=(x0 + .6Xw, y0);

paths[0] = z0--z1;
clearxy;
z0=(.6Xw - thick*0./2, X);
z1=(1/2*x0, .3X);
z2=(x0 - Xw/3, 0);
paths[1] = z0..z1..{down}z2;

pen_stroke(
    nib(top_nib rotated -15)(0,1)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(middle_up_nib)(0)
   nib(middle_down_nib)(1,2)
)(paths[1])(strokes[1]);
endglyph;