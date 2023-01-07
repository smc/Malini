input glyph;
beginglyph;
p:=0;
z0=(x1 + mw/4, undershoot);
z1=(0, (y0 + y2)/2.2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/2, (y2+y4)/2.5);
z4=(x3 - mw/3, undershoot);
z5=(x4 - mw/4, y4 + m/3);

paths[p] = z0..z1{up}..z2{right}..z3{down}..z4..{dir 90}z5;
z6 = point 2.6 of paths[p];
paths[p] := paths[p].. z6 ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
)(paths[p])(strokes[p]);

endglyph;
