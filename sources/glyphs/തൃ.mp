input glyph;
beginglyph;
p=0;
z0= (x1 + mw/4, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/2, 0.4m);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, y1);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, 0.4m);

paths[p] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..{down}z7;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)

)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% ഋ sign
z0 = point 7 of paths[p-1];
z1 = (x0 - 0.75mw, -descent);
z2 = (x1 - mw/3, (y1+y3)/2);
z3 = (x1, y2+m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir angle(direction infinity of paths[p-1])}.. {left}z1..z2..z3..z4;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", point 4 of paths[0]);
endglyph;
