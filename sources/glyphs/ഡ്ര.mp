input glyph;
beginglyph;
input ./glyphs/include/ഡ;

for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;


p:=p+1;
clearxy;
z0 = point 3.5 of paths[p-1];
z1 = (xpart(point 1.8of paths[p-1]), reph_sign_depth );
z2 = (xpart(point 2 of paths[p-2]), y1);
z3 = (xpart(point 1 of paths[p-2]) - mw/3, y4/2);
z4 = (x3 + mw/5, m);
paths[p] =  z0{dir (angle(direction 3.5 of paths[p-1]))*-1}..z1{dir 190}..{dir 170}z2..z3{up}..z4;

pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1,2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart( point infinity of paths[0]),0));
anchor( "right", point .75 of paths[p]);
endglyph;
