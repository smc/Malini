input glyph;
beginglyph;
z0=( mw/3, m);
z1=(x0 -  mw/3, y0 - m/2);
z2=(x1 +  mw/3, undershoot);
z3=(x2 +  mw/3, y2+ m/2);
z4=(x3, y3+m/3); % bottom of piller
z5=(x3, y3);
z6=(x5 +  mw/3, y5 - m/2); % Top of second arch
z7=(x6 +  mw/3, y6 + m/2);
z8=(x7, y4);
z9 = z7;
z10 =(x9+ mw/3, 0);
z11 =(x10+ mw/2, (y10+y12)/2);
z12 =(x9, 0.9ascent);
paths[0] = z0..z1{down}..{right}z2..z3---z4;
paths[1] = z4---z5..z6{right}..z7---z8;
paths[2] = z9{down}..z10{right}..z11{up}..z12;

pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(thick_nib)(3,4)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_nib)(0,1,3,4)
    nib(down_nib)(2)
)(paths[1])(strokes[1]);
pen_stroke(
    nib(thick_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(end_nib rotated terminalangle 3 of paths[2])(3)
)(paths[2])(strokes[2]);

endglyph;
