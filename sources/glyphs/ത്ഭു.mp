input glyph;
beginglyph;
input ./glyphs/include/ത_;

p:=p+1;
clearxy;
z0 = point infinity of paths[p-1] + (thick/2-thin/2, thin/2);
z1 = ( x0, (y0 + y2)/2);
z2 = ( x1 + mw/2, m - overshoot); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4= ( x3 - mw/5, y5 + m/6);
z5= ( x4 - mw/5, m/2);
z6= ( x5 + mw/5, y5 - m/6);
z7 = ( x6 + mw/4, (y6+y8)/2);
z8= (x7 - mw/3, - m/8);
z9= (xpart(point 0 of paths[0]), y8);
z10=(0, (y9+y11)/2);
z11=(x9,  -descent);
z12=(x7+ thick/2,  y11);

paths[p] := z0---z1..z2{right}..z3{down}..z4{left}..z5..z6{right} ..z7{down}..z8---z9..z10..z11---z12 ;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(top_nib)(4, 6)
    nib(down_nib)(8, 9)
    nib(down_nib rotated 90)(10)
    nib(thick_horizontal_nib)(11,12)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point infinity of paths[0]),0));
anchor( "right", point 7.5 of paths[p]);
endglyph;
