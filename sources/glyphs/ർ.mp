input glyph;
beginglyph;
z0=(x1 + mw/3, 0);
z1=(0, y0 + m/2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/1.75, (y2+y4)/2.4);
z4=(x3 - mw/3, undershoot);
z5= (x4 - mw/4, (y4 + y7)/3);
z6= ((x3 + x4)/2, 0.88(y4 + y7));
z7= (x6 - mw/2, 0.85ascent);
paths[p] = z0..z1..z2{right}..z3{down}..z4..z5..z6{dir 80}..{dir 260}z7;
paths[p] := paths[0] ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(end_nib scaled 2/3 rotated terminalangle 7 of paths[0])(7)
)(paths[p])(strokes[p]);

endglyph;
