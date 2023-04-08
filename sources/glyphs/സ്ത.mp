input glyph;
beginglyph;
input ./glyphs/include/സ;

p:=p+1;
clearxy;

z0= (x1 + mw/4, undershoot);
z1= (0, (y0 + y2)/2.08);
z2 = ( x1 + mw/2, m-overshoot); % top
z3 = ( x2 + mw/2, (y2+y4)/2.5);
z4 = ( x3 - mw/4, 2undershoot); % bottom middle
z5 = ( (x1+x3)/2.2, (y4+y6)/2.5);
z6 = ( (x5 + x7)/2, y2); % second top
z7 = ( x6 + mw/2, (y6+y8)/2.2);
z8 = ( x7 - mw/4, undershoot); %
paths[p] = z0..z1{up}..z2{right}..z3{down}..{left}z4{left}..z5{up}..z6{right}..z7{down}..z8;

paths[p]:=paths[p] shifted (1.25mw, -m)  xscaled 0.75 yscaled 0.7 ;
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
