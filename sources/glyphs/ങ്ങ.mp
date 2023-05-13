input glyph;
beginglyph;

z0 =(0, (y1 + y3)/2);
z1 =(x0 + mw/4, y3+0.55m);
z2=(x1 + mw/4, y0);
z3=(x2 - mw/4, undershoot);
z4=(x0, y0);

paths[p] := z0{up}..z1{right}..z2{down}..z3{left}..{up}z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;

z0 = point 3.8 of paths[p-1];
z1 = ( (x0 + x3)/1.4, m - overshoot); % top
z2 = ( x0 + 1.2mw, (y1+y3)/2.1);
z3 = ( x2 - mw/4, (y1+y5)/2.1); % <
z4 = ( x3 + mw/3, (y3+y5)/2);
z5 = ( (x4 + x6)/1.9, undershoot);
z6 = ( x4 - 0.6mw, y3);
z7 = ( (x6 + x9)/2, m-overshoot);   % top
z8 = ( x6 + 0.95mw, 0.6m);
z9 = ( x8, 0);
paths[p] := z0{dir angle(direction 3.8 of paths[p-1])}..z1{right}..z2{down}..{left}z3{right}..z4{down}..z5{left}..{up}z6..z7{right}..{down}z8---z9;
pen_stroke(
    nib(middle_up_nib rotated terminalangle 4 of paths[p])(0)
    nib(top_nib)(1,4)
    nib(middle_down_nib scaled 0.9)(2)
    nib(end_nib rotated 90)(3)
    nib(middle_down_nib scaled 0.9)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(top_nib scaled 0.9)(7)
    nib(thick_vertical_nib)(8)
    nib(thick_vertical_nib)(9)
)(paths[p])(strokes[p]);

p := p+1;
paths[p] := right_da;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(end_nib rotated 90)(4)
    nib(middle_down_nib scaled 0.9)(3, 5)
    nib(end_nib rotated terminalangle 6 of paths[p])(6)
)(paths[p])(strokes[p]);

anchor( "vc", point 0 of paths[p]);
anchor( "bottom", point 5.5 of paths[p]);
anchor( "right", point 5.5 of paths[p]);

endglyph;
