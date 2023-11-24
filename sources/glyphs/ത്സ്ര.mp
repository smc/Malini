input glyph;
beginglyph;
input ./glyphs/include/ത_;

paths[p] := paths[p] shifted (mw/3,0);
strokes[p] := strokes[p] shifted (mw/3,0);

input ./glyphs/include/സ_arm;

p:=p+1;
clearxy;
z0 = point 6.4 of paths[p-1];
z1 = (xpart(point 4.5 of paths[1]), reph_sign_depth );
z2 = (xpart(point 2 of paths[p-2]), y1);
z3 = (xpart(point 1 of paths[p-2]) - mw/3, ypart(point 1 of paths[p-2]));
z4 = (x3 + mw/10, m);
paths[p] =  z0{dir (angle(direction 6.4 of paths[p-1]) + 180)}..z1{dir 190}..{dir 170}z2..z3{up}..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point infinity of paths[0]),0));
anchor( "right", point 0.6 of paths[p]);
endglyph;
