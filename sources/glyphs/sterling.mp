input glyph;
beginglyph;
z0 = (0.75s, 0.9X);
z1 = (x0-s/3, X);
z2 = (x1-s/3, s);
z3 = (x2+s/6, s/2);
z4 = (thick/2, thick);

paths[0] := z0..z1..z2..z3..{dir 200}z4;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
    nib(middle_up_nib)(3)
    cut(thick_nib, 0)(4)
)(paths[0])(strokes[0]);

p:=p+1;
clearxy;
z0 = (0, thick/2);
z1 = (xpart point 0 of paths[0]+s/4, y0);
paths[p]=z0..z1;
pen_stroke(
   nib(thick_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = (0, 3/4s);
z1 = (xpart point 0 of paths[0], y0);
paths[p]=z0--z1;
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);
endglyph;
