input glyph;
beginglyph;
input ./glyphs/include/ഗ;

paths[p] := subpath (0, 4.8) of paths[p];

pen_stroke(
   nib(end_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_up_nib scaled 1.2 rotated 30)(1)
   nib(down_nib rotated -20)(2)
   nib(middle_down_nib)(3, 5)
   nib(top_nib rotated 20)(4)
   nib(middle_down_nib)(5)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
% ഋ sign
z0 = point infinity of paths[p-1];
z1 = (x0 - 0.7mw, -descent);
z2 = (x1 - mw/4, y1+m/5);
z4 = ((x1 + x0)/2, y2);
paths[p] = z0{dir angle(direction infinity of paths[p-1])}.. {left}z1..z2.. {dir -60}z4;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(end_nib rotated 30)(3)
)(paths[p])(strokes[p]);

anchor( "vc", point 3 of paths[p]);

endglyph;
