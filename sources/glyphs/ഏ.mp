input glyph;
beginglyph;

input ./glyphs/include/എ;

clearxy;
z0=(0, 0);
z1=((x0  + x2)/2, -descent*0.8);
z2=(x0 - mw/1.8, (y1+y3)/2.5);
z3=((x2+x4)/2, m-overshoot); % top
z4=(x0 + mw/2, y3 - m/2.5);
z5=(x4 - mw/3, y4 - m/3); % <
z6=(x0+mw/1.8, y5 - m/4);
z7=(x5, y6-m/4);

paths[3]:= z0{down}..z1{left}..{up}z2..z3{right}..z4{down}..{left}z5{right}..z6..z7;
paths[3]:= paths[3] shifted (xpart(point 0 of paths[2]), 0);
pen_stroke(
    nib(middle_down_nib rotated -10)(0,4)
    nib(middle_down_nib)(4)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated 90)(5)
    nib(middle_down_nib)(4,6)
    nib(end_nib rotated terminalangle 7 of paths[3])(infinity)
)(paths[3])(strokes[3]);

endglyph;
