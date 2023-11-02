input glyph;
beginglyph;
z0=(x1 + mw/4, undershoot);
z1=(0, (y0 + y2)/2.2);
z2=(x1 + mw/2, m-overshoot);
z3=(x2 + mw/2, y1);
z4=(x3 - mw/3, undershoot);
z5=(x4 - mw/4, y4 + m/3);

paths[0] = z0..z1..z2{right}..z3..z4..{dir 90}z5;
z6=(x5 + mw/1.8, m-overshoot*2 );
z7 = ( x6 + mw/1.8, y6-m/4);
z8 = ( x7 - mw/4, m/2);
z9 = ( x8 + mw/3.5, y8-m/4);
z10 = ( x9 - mw/3, undershoot); %
paths[p] := paths[0].. z6..z7{down}..{left}z8{right}..z9{down}..{dir 160}z10;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(end_nib rotated 90)(8)
    nib(middle_down_nib scaled 0.9)(7,9)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(end_nib rotated terminalangle 10 of paths[p])(10)
    ignore_directions(1,2,3,4,5,6,7,9)
)(paths[p])(strokes[p]);

endglyph;
