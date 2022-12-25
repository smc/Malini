input glyph;
beginglyph;
p:=0;
clearxy;
%  ൠ sign
z0 = (0,m);
z1 = (x0 - 0.5mw, -descent*1.2);
z2 = (x1 - mw/3, y1 + m/4);
z3 = (x1, y2 );
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir -80}.. {left}z1..z2{dir 90}..{dir -80}z3{dir 80}..{dir -80}z4;
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(end_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

endglyph;
