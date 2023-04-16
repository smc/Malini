input glyph;
beginglyph;
paths[p] = left_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := subpath(0, 2.75) of right_arch shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);



p:=p+1;
clearxy;
% ഋ sign
z0 = point infinity of paths[p-1];
z1 = (x0 - 0.75mw, -descent);
z2 = (x1 - mw/3, (y1+y3)/2);
z3 = (x1, y2+m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir angle(direction infinity of paths[p-1])}.. {left}z1..z2{up}..z3{right}..z4;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);
endglyph;
