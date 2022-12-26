input glyph;
beginglyph;
z0=(x1 + mw/4, 0);
z1=(0, y0 + 0.5m);
z2=(x1 + mw/2, y1 + m/2);
z3=(x2 + mw/1.75, y1);
z4=(x3 - mw/3, thick/4);
z5= (x4 - mw/4, (y4 + y7)/3);
z6= ((x3 + x4)/2, 3(y4 + y7)/4);
z7= (x6 - mw/2, 0.95ascent);
paths[0] = z0..z1..z2{right}..z3..z4..z5..z6{dir 80}..{dir 210}z7;
paths[0] := paths[0] ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(end_nib rotated terminalangle 7 of paths[0])(7)
)(paths[0])(strokes[0]);

endglyph;
