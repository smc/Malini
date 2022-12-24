input glyph;
beginglyph;
p:=0;
paths[p] =subpath (0,4) of da;
z0 = point infinity of paths[p] + (mw/2.5, -m/3);
paths[p] := paths[p]{right} ..{dir -80}z0;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib)(5)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% ഋ sign
z0 = point 5 of paths[p-1];
z1 = (x0 - 0.5mw, -descent);
z2 = (x1 - mw/3, (y1+y3)/2);
z3 = (x1, y2+m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir -80}.. {left}z1..z2..z3..z4;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated 30)(4)
)(paths[p])(strokes[p]);

endglyph;
