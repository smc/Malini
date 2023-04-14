input glyph;
beginglyph;
input ./glyphs/include/ജ;


p:=p+1;
clearxy;
z0 = point infinity of paths[p-2];
z1 =(x0 + mw/2, 0.6m);
z2 =(x1 + mw/3, y1-m/6);
z3 =(x2 - mw/4, y2-m/6);
z4 =(x3 + mw/3, y3-m/6);
z5 =(x2 - mw/3, -m/6);
z6 =(xpart point 7 of paths[p-2], y5);
z7 =(xpart point 6 of paths[p-2], (y6+y8)/2);
z8 =(x6, -descent);
z9 =(x2 + thick/2, y8);
paths[p]:=z0{dir angle(direction infinity of paths[p-2])}..z1..z2..{left}z3{right}..z4..z5---z6..z7..z8---z9;


pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib scaled 0.8)(1)
    nib(down_nib)(3)
    nib(middle_down_nib scaled 0.8)(2, 4)
    nib(down_nib)(5,6)
    nib(down_nib rotated 90)(7)
    nib(thick_horizontal_nib)(8,9)
)(paths[p])(strokes[p]);

anchor( "vc", point 6 of paths[0]);

endglyph;
