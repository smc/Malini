% ൜ U+0D5C MALAYALAM FRACTION ONE TENTH
% rantumaa
input glyph;
beginglyph;
z0=(x1+mw/3, 0);
z1=(0, y0 + m/2);
z2=(x1 + mw/3, m-overshoot);
z3=(x2 + mw/3, m/2);
z4=(x3 + mw/3, undershoot);
z5=(x4 + mw/4, m/2);
z6=(x5 + mw/3, m-overshoot);
z7=(x6 + mw/4, m/2);
z8=(x7 + mw/3, undershoot);
z9=(x8 + mw/3, m/2);
z10=(x9-mw/4 , m);

paths[0] = z0..z1{up}..z2{right}..z3{down}..z4{right}..z5{up}..z6{right}..z7{down}..z8{right}..z9{up}..z10 ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3,7)
    nib(middle_up_nib)(1,5,9)
    nib(end_nib rotated terminalangle 10 of paths[0])(10)
)(paths[0])(strokes[0]);


endglyph;
