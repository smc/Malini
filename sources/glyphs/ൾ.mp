input glyph;
beginglyph;
z0 = (x1 + mw/3, m);
z1 = (0, y0 - m/2);
z2 = ((x1 + x3)/2, undershoot);
z3 = (x1 + 0.66mw, 0.4m);
z4 = (x3-0.00mw, y5-0.45m);
z5 = (x4 + mw/3, m-overshoot);
z6 = (x5 + mw/2, 0.4m);
z7 = (x6 - mw/4, undershoot); % bottom.
z8 = (x7 - mw/4, (y7+y10)/3);
z9 = ((x6+x7)/2, 0.85(y7 + y10));
z10 = (x9-mw/2, 0.9ascent);
paths[0] = z0..z1..z2..z3 --- z4..z5.. z6.. z7.. z8..z9{up}..{dir 225}z10;

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib rotated -20)(1)
   nib(down_nib rotated -20)(2)
    nib(middle_down_nib)(3,4,6)
    nib(top_nib)(5)
    nib(down_nib)(7)
    nib(middle_up_nib)(8)
    nib(middle_down_nib rotated terminalangle 9 of paths[p])(9)
    nib(end_nib scaled 2/3 rotated terminalangle 10 of paths[p])(10)

)(paths[p])(strokes[p]);

endglyph;
