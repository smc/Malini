input glyph;
beginglyph;
p:=0;
z0=(x1 + mw/4, undershoot);
z1=(0, (y0 + y2)/2.2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/2, (y2+y4)/2.5);
z4=(x3 - mw/3, undershoot);
z5=(x4 - mw/4, (y4+y6)/2);
z6=(x4 + mw/2, y4 + m/2);
z7=(x6 + 0.6mw, (y6 + y8)/2);
z8=(x7 - mw/4, m-overshoot);
z9=(x8 - mw/4, m/2);

paths[p] = z0..z1{up}..z2{right}..z3{down}..z4..{dir 90}z5..{dir -20}z6..z7{up}..{left}z8..z9;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(middle_up_nib)(7)
    nib(top_nib)(8)
    nib(end_nib rotated terminalangle 9 of paths[p])(9)
)(paths[p])(strokes[p]);

endglyph;
