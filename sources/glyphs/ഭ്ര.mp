input glyph;
beginglyph;

p:=0;
z0 = ( x1 + mw/6 , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/5, m/2);
z6= ( x5 + mw/5, y5 - m/6);
z7 = ( x6 + mw/4, y6 - m/6);
z8=(x7 - mw/3, -descent*0.75);
z9= (x1 - mw/3, y1);
z10=(x9 + mw/4, m);

paths[p] := z0..z1..z2{right}..z3{dir -80}..z4{dir 170}..z5..z6{right} ..z7{dir -70}..z8{dir 190}..z9..z10 ;
paths[p] := paths[p] shifted (mw/3,0);

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1, 9)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(down_nib)(8)
    nib(top_nib)(4, 6)
    nib(end_nib rotated terminalangle 10 of paths[p])(10)
)(paths[p])(strokes[p]);


endglyph;
