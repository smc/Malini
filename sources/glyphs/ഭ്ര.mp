input glyph;
beginglyph;

z0 = ( x1 + 0.1mw , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/4, m/2);
z6= ( x4, y5 - m/6);
z7 = ( x6 + mw/3, (y6+y8)/2);
z8= (x7 - mw/2, -descent*0.7);
z9= (x1 - mw/3, y1);
z10=(x9 + mw/4, m);

paths[p] := z0..z1{up}..z2{right}..z3{down}..z4{left}..z5{down}..z6{right}..z7{down}..z8{left}..z9..z10 ;
paths[p] := paths[p] shifted (mw/3,0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1, 9)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(down_nib)(8)
    nib(top_nib scaled 0.8)(4, 6)
    nib(end_nib rotated terminalangle 10 of paths[p])(10)
)(paths[p])(strokes[p]);

anchor( "right", point 7.5 of paths[p]);

endglyph;
