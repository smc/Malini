input glyph;
beginglyph;
z0=(x1+mw/3, 0);
z1=(0, y0 + m/2);
z2=(x1 + mw/3, y1 +  0.4m);
z3=(x2 + mw/3, m/3);
z4=(x3, y3 - m/4); % bottom of piller

paths[0] = z0..z1..z2..z3---z4 ;
pen_stroke(
    nib(thicknib)(0, 2)
    nib(thinnib)(1, 3)
    nib(terminalnib rotated terminalangle 0 of paths[0])(0)
    nib(terminalnib rotated terminalangle infinity of paths[0])(infinity)
)(paths[0])(strokes[0]);

clearxy;
z0=point 3 of paths[0];
z1=(x0 + mw/2, y0 + .6m - overshoot); % top of second arch
z2=(x1 + mw/3, y1 - m/2);
z3= ( x2 - mw/3, y2 - m/2);
z4= ( x3 - mw/4, y3 + .3m);
z5= ( x2 - thick*0.13, y2);

paths[1] = z0{up}..z1..z2..z3..z4..z5;
paths[1]:= paths[1] slanted tand(8) shifted (-tand(8)*mw/3, 0);
clearxy;
z0=point infinity of paths[1];
z1=(x0 + mw/2, y0-m/4);
z2=(x1 + mw/4, y1+ m/4);
z3=(x1, y2+m/3);
z4=(x1 - m/8, y1 + m/20);
paths[1]:=paths[1]..z1..z2..z3..{dir -60}z4;
pen_stroke(
    nib(thicknib)(1, 3, 5)
    nib(thinnib)(0, 2, 4, 7)
    nib(thinterminalnib rotated terminalangle 0 of paths[1])(0)
    nib(terminalnib rotated terminalangle infinity of paths[1])(infinity)
)(paths[1])(strokes[1]);
endglyph;
