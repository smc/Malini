input glyph;
beginglyph;

p:=0;
z0 = ( x1 + mw/6 , 0);
z1 = ( 0, (y0 + y2)/2);
z2 = ( x1 + mw/2, 0.975m); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/5, m/2);
z6= ( x5 + mw/5, y5 - m/6);
z7 = ( x6 + mw/4, y6 - m/6);
z8= (x7 - mw/3, y7 - m/4);
z9= (x8 - mw/3, y8);
z10=(0, (y9+y11)/2);
z11=(x9,  -descent*0.75);
z12=(x7+ thick/2,  y11);

paths[p] := z0..z1..z2{right}..z3{dir -80}..z4{dir 170}..z5..z6{right} ..z7..z8---z9..z10..z11---z12 ;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7, 10)
    nib(down_nib)(8, 9)
    nib(top_nib)(4, 6)
    nib(thick_vertical_nib rotated 90)(11,12)
)(paths[p])(strokes[p]);

endglyph;
