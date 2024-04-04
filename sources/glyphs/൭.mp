input glyph;
beginglyph;

z0=(x3 + thick*0.15, y3);
z1=(x0 + mw/2, y3 - m/4);
z2=(x1 - mw/5, overshoot);
z3=(0, m/2);
z4=(x3 + mw/2, m);
z5=(x4 + mw/2, m/2);
z6 = (x2, -descent);

paths[0] = z0..z1{down}..z2{left}..z3..z4..{down}z5..z6;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib)(1, 5)
   nib(top_nib)(4)
   nib(middle_up_nib)(3)
   nib(down_nib)(2)
   nib(end_nib rotated terminalangle 7 of paths[p])(7)
)(paths[p])(strokes[p]);

endglyph;
