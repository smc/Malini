input glyph;
beginglyph;
input ./glyphs/include/left_arch;

paths[p] := paths[p] shifted (mw/3,0);
strokes[p] := strokes[p] shifted (mw/3,0);


p:=p+1;
input ./glyphs/include/right_arch;

paths[p] := subpath(0,2.9) of paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
)(paths[p])(strokes[p]);



p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = (xpart(point 1.75 of paths[p-1]), reph_sign_depth);
z2 = (xpart(point 2 of paths[p-2]), y1);
z3 = (xpart(point 1 of paths[p-2]) - mw/3, ypart(point 1 of paths[p-2]));
z4 = (x3 + mw/6, m);
paths[p] =  z0{dir (angle(direction infinity of paths[p-1]))}..z1{dir -170}..{dir -190}z2..z3..z4;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "right", point .8 of paths[p]);

endglyph;
