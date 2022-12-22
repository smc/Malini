input glyph;
beginglyph;
p:=0;
z0= (x1 + mw/4, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, m); % top
z3 = ( x2 + mw/2, y1);
z4 = ( x3 - mw/4, thick/4); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y1);
z8 = ( x7 - mw/4, y0); %
paths[p] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7..z8;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    cut(end_nib  rotated -45, rel 90)(8)
    ignore_directions(1, 2, 3,4,5,6,7)
)(paths[p])(strokes[p]);


anchor( "vc", point 4 of paths[p]);
anchor( "bottom", (xpart(point 7.5 of paths[p]), 0));
endglyph;
