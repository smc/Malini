input glyph;
beginglyph;

input ./glyphs/include/പ;

p:=p+1;
clearxy;

z0= (x1 + mw/3, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/2, y1);
z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
z5 = ( x4 - mw/4, y3);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y1);
z8 = ( x7 - mw/3, y0); %
paths[p] = z0..z1..z2{right}..z3..{left}z4{left}..z5..z6{right}..z7..z8;

paths[p]:=paths[p] shifted (0.25mw, -m) xscaled 0.75 yscaled 0.7 ;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib scaled 0.8)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(end_nib rotated terminalangle 8 of paths[p])(8)
)(paths[p])(strokes[p]);

anchor( "vc", (x3,0));

endglyph;
