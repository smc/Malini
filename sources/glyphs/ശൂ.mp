input glyph;
beginglyph;
input ./glyphs/include/ശ;

clearxy;
p:=p+1;
z0 =  point infinity of paths[p-1];
z1 = (x0 + mw/2, (y0 + y2)/2);
z2 = (x1 - mw/4, (y1 + y3)/2);
z3 = (x2 + mw/3, (y2+y4)/2);
z4 = (x0, -m/6);
z5 = (xpart point 0 of paths[p-1], y4);
z6 = (xpart point 1 of paths[p-1], (y5+y7)/2);
z7 = (x5, -descent);
z8 = (x1+thick/2, y7);
paths[p] = z0{right}..z1..{left}z2{right}..z3..z4---z5..z6..z7---z8;

pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib)(1)
    nib(end_nib rotated 90)(2)
    nib(middle_down_nib scaled 0.9)(3)
    nib(down_nib)(4,5)
    nib(down_nib rotated 90)(6)
    nib(thick_horizontal_nib)(7,8)
)(paths[p])(strokes[p]);

endglyph;
