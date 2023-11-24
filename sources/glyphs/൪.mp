input glyph;
beginglyph;
z0=(x1 + mw/4, 0);
z1=(0, y0 + m/2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/1.75, (y2+y4)/2.4);
z4=(x3 - mw/3, undershoot);
z5= (x4 - mw/4, (y4 + y6)/3);
z6= (x4, ascent);
paths[0] = z0..z1{up}..z2{right}..z3{down}..z4..z5{up}..{up}z6;
paths[0] := paths[0] ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(end_nib rotated terminalangle 6 of paths[0])(6)
)(paths[0])(strokes[0]);

endglyph;
