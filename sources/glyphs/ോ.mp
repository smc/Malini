input glyph;
beginglyph;
z0=(mw/3, 0.6m);
z1=(x0 + mw/4, y0 + m/6);
z2=(x1 - mw/4, m);
z3=(x2 - mw/3, y2 - m/2);
z4=(x3 + mw/3, y3 - m/2);
z5=(x4 + mw/4, y4 + m/6);
z6=(x3 + 0.05mw, y5 + m/6);
loop_slant=tand(4);
paths[0] = z0{right}..z1..z2.. z3..z4..z5..{dir 210}z6 ;
paths[0]:=paths[0] slanted loop_slant shifted (-loop_slant*m/2,0);

pen_stroke(
    nib(thicknib rotated 0 )(0, 2)
    nib(thinnib rotated 0 )(1, 3, 5)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);

clearxy;
z0=(0, 3/4m);
z1=(x0 + mw/3, m);
z2=(x1 + mw/3, (y1+y3)/2);
z3=(x1, 0);
z4=(x0, m/4);
paths[1] = z0..z1..z2..z3..z4;
paths[1] := paths[1] shifted (xpart(point 5 of paths[0]) + 2thick,0);
pen_stroke(
    nib(middle_up_nib)(0, 4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[1])(strokes[1]);

endglyph;
