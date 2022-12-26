input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, 0);
z4=(x0, y0);
z5=(x4 + mw/2, m);
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



clearxy;

z0=(0, 0.75m);
z1=(x0 + mw/3, m-y3);
z2=(x1 + mw/3, (y1+y3)/2.2);
z3=(x1, 0);
z4=(x0, m/4);
paths[1] = z0..z1..z2..z3..z4;
paths[1]:= paths[1] shifted(xpart(point 6 of paths[0]) + mw/4, 0);
pen_stroke(
    cut(end_nib, rel 90)(0)
    cut(end_nib, rel 90)(4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[1])(strokes[1]);
endglyph;
