input glyph;
beginglyph;

input ./glyphs/include/ശ;

clearxy;
p:=p+1;
z0 =  point infinity of paths[p-1];
z1 = (x0 + mw/2, (y0+y2)/2);
z2 = (x0, -m/6);
z3 = (xpart point 2 of paths[p-1], y2);
z4 = (xpart point 1 of paths[p-1], (y3+y5)/2);
z5 = (x3, -descent);
z6 = (x1+thick/2, y5);
paths[p] =z0{right}..z1{down}..z2---z3..z4..z5---z6;

pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2,3)
    nib(down_nib rotated 90)(4)
    nib(thick_horizontal_nib)(5,6)
)(paths[p])(strokes[p]);
rbearing:=rbearing - thick;
endglyph;
