input glyph;
beginglyph;
z0=(x1 + mw/4, 0);
z1=(0, y0 + m/2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/1.75, (y2+y4)/2.4);
z4=((x3 +x5)/2, undershoot);
z5= (x3 - mw/1.8, y4 + m/3);
z6= (x5 + mw/2.5, y7 - m/4);
z7= ((x6 + x8)/2, m + m/3);
z8 = (x6 - mw/2, m + m/4);
paths[p] = z0..z1..z2{right}..z3{down}..z4{left}..z5{up}..z6{dir 75}..{left}z7..z8;
paths[p] := paths[0] ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(middle_down_nib)(6)
    nib(top_nib)(7)
    nib(end_nib scaled 2/3 rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(0.7l)
)(paths[p])(strokes[p]);

endglyph;
