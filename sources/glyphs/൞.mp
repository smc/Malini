input glyph;
beginglyph;
%  MALAYALAM FRACTION ONE FIFTH
z0=(x1+mw/6, -thick/2);
z1=(0, y0 + m/2);
z2=(x0 + mw/3, m);
z3=(x2 + mw/2 , y2 - 0.4m);
z4=(x3 - mw/4, 0); % bottom
z5=(x4 - mw/4, y4+ m/4);
z6=(x5 + mw/3, y5 + m/4);
z7=(x6 + mw/3, y6 + m/2);
z8=(x7 + mw/3, y7);
z9=(x8, y8 - m/4);
z10=(x9 + mw/4, y9 - m/4);
z11=(x10 + mw/4, y10 + m/4);
z12=(x11 - mw/6, y11 + m/4);

paths[0] = z0..z1..z2..{dir -80}z3..z4..z5..z6{right}..{dir 120}z7{right}..{right}z8{down}..z9{down}..z10{right}..z11..z12 ;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(middle_up_nib)(5)
    nib(top_nib)(6)
    nib(end_nib rotated 45)(7, 8,9)
    nib(down_nib)(10)
    nib(middle_down_nib scaled 0.9)(11)
     nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);

endglyph;
