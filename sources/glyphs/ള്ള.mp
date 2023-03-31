input glyph;
beginglyph;

z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.45m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, thick*0.6/2);
z4=(x0, y0);

paths[0] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
paths[0]:=paths[0] shifted (0, m/8);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)

)(paths[0])(strokes[0]);

clearxy;
z0 = point 3.8 of paths[0];
z1 = ( x0, (y0 + y2)/2);
z2 = ( x1 + mw/1.66, m - overshoot); % top
z3 = ( x2 + mw/3, y2 - m/4);
z4 = ( x3 - mw/3, y3 - m/4); % <
z5 = ( x3+ mw/10, y4-m/4);
z6 = ( x4, 0);
z7 = ( xpart(point 1 of paths[0]), y6);
z8 = (xpart(point 0 of paths[0]), (y7+y9)/2);
z9= (x7, -descent*0.75);
z10 = (x5+ mw/2, y9);
paths[1]= z0..z1..z2..z3..{left}z4{right}..z5..z6---z7..z8..z9---z10;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(down_nib)(6)
    nib(down_nib)(7)
    nib(down_nib rotated 90)(8)
    nib(thick_horizontal_nib)(9,10)
)(paths[1])(strokes[1]);

shift = xpart(point infinity of paths[1]) - mw/3;
paths[2] = paths[0] shifted (shift, 0);
% We need to cut the extra elongation we gave for first ള
paths[3] := subpath (0, 9.62) of paths[1] shifted (shift, 0);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
)(paths[2])(strokes[2]);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(down_nib)(6)
    nib(down_nib)(7)
    nib(down_nib rotated 90)(8)
    nib(thick_horizontal_nib)(9,10)
)(paths[3])(strokes[3]);

anchor( "vc", (xpart(point 0 of paths[2]),0));
anchor( "right", point infinity of paths[3] - (mw/5,0));

endglyph;
