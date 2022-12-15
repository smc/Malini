input glyph;
beginglyph;

z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, thick*0.6/2);
z4=(x0, y0);
paths[0] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_up_nib scaled 0.6)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)

)(paths[0])(strokes[0]);

clearxy;
z0 = point 3.6 of paths[0];
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + 0.85mw, m); % top
z3 = ( x2 + mw/3, y2 - m/4);
z4 = ( x3 - mw/4, y3 - m/4); % <
z5 = ( x4 + mw/3, y4-m/4);
z6 = ( x5 - mw/3, thick*0.5/2);
z7 = ( x6 - mw/4, y6 + m/2.5);
z8 = ( x7 + mw/2.5, m*0.975);   % top
z9 = ( x8 + mw/2, y8-m/2.5);
z10 = ( x9, 0);
paths[1] = z0..z1..z2..z3..{left}z4{right}..z5..z6..{up}z7..z8..{down}z9---z10;
pen_stroke(
    nib(middle_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib scaled 0.9)(3)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib scaled 0.9)(5)
    nib(down_nib)(6)
    nib(middle_up_nib)(7)
    nib(top_nib scaled 0.9)(8)
    nib(thin_vertical_nib)(9)
    nib(thin_vertical_nib)(10)
    ignore_directions(2,3,5,7,8)
)(paths[1])(strokes[1]);

paths[2] := right_da;
paths[2]:= paths[2] shifted (xpart(point infinity of paths[1]), 0);

pen_stroke(
    nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib scaled 0.9)(3, 5)
    nib(end_nib rotated 45)(6)
    ignore_directions(2,3,5)
)(paths[2])(strokes[2]);

anchor( "vc", point 0 of paths[2]);
anchor( "bottom", point 5.5 of paths[2]);
anchor( "right", point 5.5 of paths[2]);

endglyph;
