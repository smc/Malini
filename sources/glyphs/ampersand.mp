input glyph;
beginglyph;

z0= (Xw*0.67, X/3);
z1 =((x0+x2)/2, undershoot);
z2 =(0, (y1+y3)/2);
z3 =((x2+x4)/2, (y2+y4)/2);
z4 =(0.85*x0, 0.8y5);
z5 =((x4+x6)/2, X);
z6 =(0.15x0, y4);
z7 =(0.8x3, y3);
z8 =(x0, 0);
paths[0] =z0..z1{left}..z2{up}..z3{right}..z4{up}..{left}z5..z6{down}..z7..z8;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3,5)
    nib(middle_down_nib)(4,6)
    nib(thick_nib rotated terminalangle 8 of paths[0])(7, 8)
)(paths[0])(strokes[0]);

endglyph;
