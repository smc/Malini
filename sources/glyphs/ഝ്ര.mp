input glyph;
beginglyph;
input ./glyphs/include/ത_;

paths[p] := subpath(0, 7.333) of paths[p];
paths[p] := paths[p] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(2,6)
    nib(middle_down_nib)(3, 7)
    nib(down_nib)(4)
    nib(middle_up_nib)(1,5)
    nib(middle_down_nib)(8)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p]:=subpath(1, infinity) of left_arch_dha xscaled 0.9 shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(thin_vertical_nib)(2)
    nib(thin_vertical_nib)(3)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
paths[p]=right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = point 3.5 of paths[p-1];
z1 = (xpart(point 1.8 of paths[p-1]), reph_sign_depth );
z2 = (xpart(point 2 of paths[p-3]), y1);
z3 = (xpart(point 1 of paths[p-3]) - mw/3, ypart(point 1 of paths[p-3]));
z4 = (x3 + mw/6, m);

paths[p] =  z0{dir (angle(direction 3.5 of paths[p-1]))*-1}..z1{dir 190}..{dir 170}z2..z3..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


anchor( "vc", (xpart( point infinity of paths[0]),0));
anchor( "right", point 0.75 of paths[p]);
endglyph;
