input glyph;
beginglyph;
input ./glyphs/include/left_arch;
paths[p]:=paths[p] shifted (mw/3, 0) ;
strokes[p]:=strokes[p] shifted (mw/3, 0) ;


clearxy;
p:=p+1;
paths[p]:=subpath (0, 5) of right_da shifted (xpart(point infinity of paths[p-1]), 0) ;
z0=(xpart(point infinity of paths[p]) - mw/2 , -m/3);
z1=(xpart(point 2 of paths[p-1]) , y0);
z2=(xpart(point 1 of paths[p-1]) - mw/3 , ypart(point 1 of paths[p-1]));
z3=(x2 + mw/6 , ypart(point 2 of paths[p-1]));
paths[p]:=paths[p]{dir angle(direction 5 of paths[p])}..{dir 190}z0..{dir 170}z1..z2..z3;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib rotated 90)(4)
    nib(middle_down_nib scaled 0.9)(5)
    nib(down_nib)(6,7)
    nib(middle_up_nib)(8)
    nib(end_nib rotated terminalangle 9 of paths[p])(9)
)(paths[p])(strokes[p]);

anchor( "vc", point 0 of paths[p]);
anchor( "right", point 5.5 of paths[p]);

endglyph;
