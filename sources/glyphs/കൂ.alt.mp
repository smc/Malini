input glyph;
beginglyph;

input ./glyphs/include/ക;


for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;


p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = (xpart point 5 of paths[p-1], (y0+y2)/2);
z2 = (xpart point 4 of paths[p-1], reph_sign_depth);
z3 = (xpart point 0 of paths[p-1], y2);
z4 = (xpart(point 2 of paths[1]) - mw/3, m/2);
z5 = (x4+mw/4, m);
paths[p] =  z0{right} .. z1{down}..z2---z3..z4..z5;
dt := directiontime dir 270 of   paths[p];
paths[p] := insert_nodes(paths[p])(dt);
dt := directiontime dir 90 of subpath(4, 5) of paths[p];
paths[p] := insert_nodes(paths[p])(4 + dt);
paths[p]:= harmonize(paths[p]);
pen_stroke(
    nib(thin_vertical_nib rotated 90)(0)
    nib(middle_down_nib scaled 0.95)(1)
    nib(thick_horizontal_nib)(2)
    nib(thick_nib rotated terminalangle 3 of paths[p] scaled 0.8)(3)
    nib(end_nib)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[0]);
anchor( "right", point 1.5 of paths[p]);

endglyph;
