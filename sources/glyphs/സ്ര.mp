input glyph;
beginglyph;

input ./glyphs/include/സ;

for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;

p:=p+1;
clearxy;
z0 = point 6.4 of paths[p-1];
z1 = (3/4(x0-x3), reph_sign_depth  );
z2 = (0.5(x0-x3), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, m/2);
z4 = (x3+mw/6, m);
paths[p] =  z0{dir (angle(direction 6.4 of paths[p-1]) + 180)}..z1---z2..z3..z4;

paths[p] := insert_nodes(paths[p], 2.5);

pen_stroke(
    nib(middle_up_nib)(0)
    nib(thick_horizontal_nib)(1, 2)
    nib(thick_nib rotated terminalangle 3 of paths[p] scaled 0.8)(3)
    nib(middle_up_nib scaled 1.1)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(3)
)(paths[p])(strokes[p]);

anchor( "vc", (x3,0));
anchor( "right", point .6 of paths[2]);

endglyph;
