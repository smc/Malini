input glyph;
beginglyph;

z0 = ( x1 + 0.15mw , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/4, m/2);
z6= ( x4, y7 + m/6);
z7 = ( x6 + mw/4, y8 + m/8);
z8 = ( x2 - mw/8, thin);

paths[0] := z0..z1{up}..z2{right}..z3{down}..z4{left}..z5{down}..z6{right}..z7{down}..{dir 150}z8;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(top_nib scaled 0.8)(4, 6)
    nib(end_nib rotated terminalangle infinity of paths[0])(infinity)
    ignore_directions(1,4,5,6,7)
)(paths[0])(strokes[0]);

endglyph;
