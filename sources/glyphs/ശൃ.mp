input glyph;
beginglyph;

input ./glyphs/include/ശ;

p:=p+1;
clearxy;
% ഋ sign
z0 = point infinity of paths[p-1];
z1 = (x0 + mw/2, m/6);
z2 = (x1 - 0.75mw, -descent);
z3 = (x2 - mw/3, (y2+y4)/2);
z4 = (x2, y3+m/6);
z5 = (x2 + mw/3, y3);
paths[p] =  z0{right}.. z1{down}.. {left}z2..z3..z4..z5;
pen_stroke(
    nib(top_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(middle_down_nib)(3)
    nib(top_nib)(4)
    nib(end_nib rotated 30)(5)
)(paths[p])(strokes[p]);

endglyph;
