input glyph;
beginglyph;

input ./glyphs/include/ക;

paths[p] := subpath(0, 4) of paths[p];
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib scaled 0.9)(2, 5)
    nib(thin_vertical_nib rotated 90)(3, 4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0=point infinity of paths[p-1];
z1=(x0 + mw/3, (y0+y2)/2);
z2=(x1 - mw/4, undershoot);
z3=(x2 - mw/4, (y2+y4)/2);
z4=(x3 + mw/2, m-overshoot);
z5=(x4 + mw/2.5, (y4+y6)/2);
z6=(x5 - mw/4, (y4+y8)/2);
z7=(x6 + mw/2.6, (y6+y8)/2);
z8=(x6, undershoot  - mw/6);
z9=(xpart point 1 of paths[1], y8);
z10 = ( xpart point 2 of paths[1], (y9+y11)/2);
z11 = ( x9, -descent);
z12 = ( x7+thick, y11);
paths[p] := z0{right}..z1{down}..z2{left}..z3{up}..z4{right}..z5{down}..{left}z6{right}..z7{down}..z8---z9..z10..z11---z12;

pen_stroke(
    nib(thin_vertical_nib rotated 90)(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(top_nib)(4)
    nib(middle_down_nib scaled 0.9)(5, 7)
    nib(end_nib rotated 90)(6)
    nib(down_nib)(8,9)
    nib(down_nib rotated 90)(10)
    nib(thick_horizontal_nib)(11,12)
)(paths[p] )(strokes[p]);

rbearing:=rbearing - thick;
anchor( "vc", point 1 of paths[0]);

endglyph;
