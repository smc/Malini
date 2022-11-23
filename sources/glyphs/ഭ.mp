input glyph;
beginglyph;

z0 = ( x1 + mw/6 , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, 0.975m); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/5, m/2);
z6= ( x5 + mw/5, y7 + m/6);
z7 = ( x6 + mw/3, y8 + m/8);
z8 = ( x2 - mw/8, thick*0.6);

paths[0] := z0..z1..z2{right}..z3{down}..z4{left}..z5..z6{right}..z7{down}..{dir 150}z8;

pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(top_nib)(4, 6)
    nib(end_nib rotated -60)(8)
)(paths[0])(strokes[0]);

endglyph;
