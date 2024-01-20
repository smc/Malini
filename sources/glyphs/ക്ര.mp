input glyph;
beginglyph;
input ./glyphs/include/ക;


for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;

paths[p] := subpath(0, 4) of paths[p];
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib scaled 0.9)(2, 5)
    nib(thin_vertical_nib rotated 90)(3, 4)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 = (0.9x0, reph_sign_depth);
z2 = (0.5(x0-x3), y1);
z3 = (xpart(point 2 of paths[1]) - mw/3, m/2);
z4 = (x3+mw/4, m);
paths[p] =  z0{right} .. z1---z2..z4;
dt := directiontime dir 270 of   paths[p];
paths[p] := insert_nodes(paths[p])(dt);
dt := directiontime dir 90 of subpath(3, 4) of paths[p];
paths[p] := insert_nodes(paths[p])(3+ dt);
paths[p]:=harmonize(paths[p]);
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
