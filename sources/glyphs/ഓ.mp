input glyph;
beginglyph;
z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);

paths[0] = z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
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
z2 = ( x1 + mw/1.666, m - overshoot); % top
z3 = ( x2 + mw/2.4, y2 - m/4);
z4 = ( x3 - mw/3, y3 - m/4); % <
z5 = ( x3+ mw/10, y4-m/4);
z6 = ( x4, thick/4);
paths[1]= z0..z1..z2{dir 5}..z3..{left}z4{right}..z5..{dir 160}z6;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib)(5)
    nib(end_nib rotated 60)(6)
)(paths[1])(strokes[1]);


clearxy;
z0=(0, 0.75m);
z1=(x0 + mw/3, m-y3);
z2=(x1 + mw/3, (y1+y3)/2);
z3=(x1, 0);
z4=(x0, m-y0);
paths[2] = z0..z1..z2..z3..z4;
paths[2]:= paths[2] shifted(xpart(point 5 of paths[1]) + mw/4, 0);
pen_stroke(
    nib(middle_up_nib)(0,4)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
)(paths[2])(strokes[2]);

endglyph;

