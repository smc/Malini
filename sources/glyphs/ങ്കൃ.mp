input glyph;
beginglyph;

input ./glyphs/include/ക;
paths[p] := subpath(0, 3) of paths[p]
   -- point 4 of paths[p] - (mw/4, 0);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib scaled 0.9)(2, 5)
    nib(thin_vertical_nib rotated 90)(3, 4)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0=point 3 of paths[p-1];
z1=(0, (y0+y2)/2);
z2=((x1+x3)/2, m-overshoot);
z3=point 0 of paths[p-1];
paths[p] := z0{left}..z1{up}..z2{right}..{down}z3;
paths[p] := harmonize(paths[p]);
pen_stroke(
   nib(thin_vertical_nib rotated 90)(0, 4)
   nib(middle_down_nib scaled 0.9)(1)
   nib(top_nib)(2)
   nib(middle_up_nib)(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
% ഋ sign
z0 = point 4 of paths[p-2];
z1 = (x0 + mw/2, (y0+y2)/2);
z2 = (x1 - 0.75mw, -descent);
z3 = (x2 - mw/3, (y2+y4)/2);
z4 = (x2, y3+m/6);
z5 = (x2 + mw/3, y3);
paths[p] = z0{dir 0}.. z1{down} .. {left}z2..z3..z4..z5;
paths[p] := harmonize(paths[p]);
pen_stroke(
    nib(thin_vertical_nib rotated 90)(0)
    nib(down_nib)(2)
    nib(middle_down_nib)(1, 3)
    nib(top_nib)(4)
    nib(end_nib rotated 30)(5)
)(paths[p])(strokes[p]);

anchor( "vc", z2);

endglyph;
