input glyph;
beginglyph;
input ./glyphs/include/ണ;
% Third arch

p:=3;
clearxy;
z0 = point infinity of paths[p-1] + (thick/2-thin/2, thin/2);
z1 = ( x0, 0.6m);
z2 = ( x1 + mw/2.2, m - overshoot); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/5, m/2);
z6= ( x5 + mw/5, y7 + m/6);
z7 = ( x6 + mw/4, y8 + m/8);
z8 = ( x2 - mw/8, thick*0.6);

paths[p] := z0---z1..z2{right}..z3{down}..z4{left}..z5{down}..z6{right}..z7{down}..{dir 150}z8;

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(top_nib)(4, 6)
    nib(end_nib rotated terminalangle 8 of paths[p])(8)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[2]);
anchor( "right", point 7.5 of paths[3]);

endglyph;
