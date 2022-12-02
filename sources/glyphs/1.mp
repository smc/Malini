input glyph;
beginglyph;
z0=(mw/10, X);
z1=(x0, 0);
z2=(x0 - mw/3, 2/3X);
paths[0] = z0--z1;
paths[1] = z2..{up}z0;

pen_stroke(
    nib(middle_down_nib)(0,1)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(middle_up_nib rotated -45)(0)
    nib(middle_down_nib)(1)
)(paths[1])(strokes[1]);
lbearing:=2*lbearing;
rbearing:=2*rbearing;
endglyph;