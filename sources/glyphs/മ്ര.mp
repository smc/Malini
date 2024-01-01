input glyph;
beginglyph;
input ./glyphs/include/മ;

for i=0 upto 2:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;

p:=p+1;
clearxy;
z0 = (xpart point 4 of paths[p-3], 0);
z1 = (3/4(x0-x3), reph_sign_depth  );
z2 = (0.6(x0-x3), y1);
z3 = (xpart(point 1 of paths[0]) - mw/4, m);
paths[p] =  z0{down}..z1---z2..z3;
dt := directiontime dir 90 of subpath(2, 3) of paths[p];
paths[p] := insert_nodes(paths[p])(2+ dt);
pen_stroke(
    nib(middle_down_nib rotated -10)(0)
    nib(thick_horizontal_nib)(1,2)
    nib(end_nib)(3)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "right", point 0.5 of paths[p]);

endglyph;
