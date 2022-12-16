input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, thick*0.6/2);
z4=(x0, y0);
z5=(x4 + mw/2, 0.975m);
z6=(x5 + mw/2, m/2);
z7=(x6-mw/4, 0);
paths[0] = z0{dir 80}..z1..z2..z3..z4..z5..{down}z6..z7;

pen_stroke(
   nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_down_nib )(6)
    nib(end_nib rotated terminalangle 7 of paths[0])(7)
)(paths[0])(strokes[0]);


paths[1]:= paths[0] shifted(xpart(point 6 of paths[0]) + mw/4, 0);

pen_stroke(
   nib(middle_up_nib)(0,4)
    nib(top_nib)(1,5)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
     nib(middle_down_nib )(6)
    nib(end_nib rotated terminalangle 7 of paths[1])(7)
)(paths[1])(strokes[1]);

endglyph;
