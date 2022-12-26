input glyph;
beginglyph;
z0 = (x1 + mw/4, m);
z1 = (0, y0 - m/2);
z2 = (x1 + mw/3, thick*0.5/2);
z3 = (x2 + mw/3, 0.4m);
z4 = (x3, y5-0.4m);
z5 = (x4 + mw/3, y0-thick*0.5/2);
z6 = (x5 + mw/2, 0.4m);
z7 = (x6 - mw/4, y2); % bottom.
z8 = (x7 - mw/4, (y7+y10)/3);
z9 = ((x6+x7)/2, 3(y7 + y10)/4);
z10 = (x9-mw/3, 0.95ascent);
paths[0] = z0{dir 215}..z1..z2..z3 --- z4..z5.. z6.. z7.. z8..z9{dir 80}..{dir 210}z10;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib)(3,4,6)
    nib(top_nib)(5)
    nib(down_nib)(7)
    nib(middle_up_nib)(8)
    nib(middle_down_nib)(9)
    nib(end_nib rotated terminalangle 10 of paths[0])(10)
    ignore_directions(2,6,7,8,9)
)(paths[0])(strokes[0]);

endglyph;
